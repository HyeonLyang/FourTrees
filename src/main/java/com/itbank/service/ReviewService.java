package com.itbank.service;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.itbank.components.Paging;
import com.itbank.model.RestaurantDAO;
import com.itbank.model.ReviewDAO;
import com.itbank.model.vo.ReviewVO;
import com.jcraft.jsch.Channel;
import com.jcraft.jsch.ChannelSftp;
import com.jcraft.jsch.JSch;
import com.jcraft.jsch.Session;
import com.jcraft.jsch.SftpATTRS;

@Service
public class ReviewService {
	
	@Autowired private ReviewDAO dao;
	@Autowired private RestaurantDAO res_dao;
	
	// JSch는 mavenRepository에서 의존성 추가
	private JSch jsch = new JSch();

	public int addReview(ReviewVO input) throws Exception {
		MultipartFile file = input.getUpload();
		input.setImg(file.getOriginalFilename());
		
		// 세션에는 root 계정으로 linux에 접근한다 (계정, ip, 포트번호)
		Session session = jsch.getSession("root", "192.168.1.100", 22);
		session.setConfig("StrictHostKeyChecking", "no");
		session.setPassword("1");
		session.connect();
		
		// channel을 열어서 연결을 시도하는 부분 (sftp는 연결방식)
		Channel channel = session.openChannel("sftp");
		channel.connect();
		// sftp로 채널을 연다
		ChannelSftp sftpChannel = (ChannelSftp) channel;
		
		// 리뷰작성시 별점을 레스토랑 점수에 반영시키는 과정
		List<Double> scoreList = dao.getResScores(input.getIdx());
		double scoreSum = 0;
		
		for(double score : scoreList) {
			scoreSum += score;
		}
		scoreSum += input.getScore();
		double resScore = scoreSum / scoreList.size();
		
		res_dao.updateScore(resScore);
		
		int row = dao.insert(input);
		String idx = dao.selectidx();
		
		
		// 여기는 리눅스 계정 내의 위치
		String remoteDir = "/var/www/html/";

		// 지정된 디렉토리가 있는지 없는지 확인하는 곳 (try ~ catch)가 없으면 에러가 나서 업로드 자체가 불가능
		SftpATTRS attrs;
		try {			
			// 여기서 idx를 추가해야 idx 번호의 폴더가 생성된다
			attrs = sftpChannel.stat(remoteDir + idx);
		} catch (Exception e) {
			// 폴더가 없으면 생성하라			
			sftpChannel.mkdir(remoteDir + idx);
		}
		
		// 위 경로는 /var/www/html/idx/이미지 이름.확장명이다
		String remoteFilePath = remoteDir + "/" + idx + "/" + file.getOriginalFilename();		
		
		// inputStream으로 받지 않으면 이미지 파일이 아닌 이미지.jpg 이름의 txt가 생성되니 반드시 넣어야 한다
		try (InputStream fileStream = file.getInputStream()) {
			sftpChannel.put(fileStream,remoteFilePath);
		}

		sftpChannel.disconnect();
		channel.disconnect();
		session.disconnect();
		
		
		return row;
	}

	public Map<String, Object> getReview(int reqPage) {
		Paging p = new Paging(reqPage, dao.getTotalReview());
		
		List<ReviewVO> list = dao.selectAll(p);
		
		Map<String, Object> result = new HashMap<>();
		
		result.put("list", list);
		result.put("p", p);
		
		return result;
	}

	public List<ReviewVO> getReviews(int idx) {
		return dao.selectReviews(idx);
	}

}
