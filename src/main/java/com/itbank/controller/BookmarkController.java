package com.itbank.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itbank.model.vo.AccountVo;
import com.itbank.service.BookmarkService;

@Controller
@RequestMapping("/bookmark")
public class BookmarkController {

    @Autowired
    private BookmarkService bs;

    @GetMapping("/add")
    public String addBookmark(@RequestParam int idx, HttpSession session) {
        // 세션에서 사용자 ID를 가져옵니다.
        AccountVo account = (AccountVo) session.getAttribute("user");
        Integer userIdx = (account != null) ? account.getIdx() : null; // 또는 필요에 따라 다른 사용자 식별 정보를 가져와야 합니다.

        // 사용자가 로그인하지 않은 경우 처리
        if (userIdx == null) {
            // 로그인 페이지로 리다이렉트하거나, 애플리케이션의 요구사항에 맞게 처리합니다.
            return "redirect:/account/login"; // 로그인 페이지로 리다이렉트합니다.
        }

        // BookmarkService의 addBookmark 메서드를 호출하여 북마크를 추가합니다.
        bs.addBookmark(userIdx, idx);

        // 북마크가 추가된 후 해당 아이템의 상세 페이지로 리다이렉트합니다.
        return "redirect:/restaurant/res_detail/" + idx;
    }
    
}