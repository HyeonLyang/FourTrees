package com.itbank.components;

import org.springframework.stereotype.Component;

@Component
public class Romanizer {
	
		/** 초성 - 가(ㄱ), 날(ㄴ) 닭(ㄷ) */
		private static String[] arrChoSungEng = { 
			"k", "K", "n", "d", "D",
			"r", "m", "b", "B", "s", "S", "a", "j",
			"J", "ch", "c", "t", "p", "h" };

		/** 중성 - 가(ㅏ), 야(ㅑ), 뺨(ㅑ)*/
		private static String[] arrJungSungEng = { 
			"a", "e", "ya", "ae",
			"eo", "e", "yeo", "e", "o", "wa", "wae", "oe",
			"yo", "u", "wo", "we", "wi", "yu", "eu", "ui", "i" };

		/** 종성 - 가(없음), 갈(ㄹ) 천(ㄴ) */
		private static String[] arrJongSungEng = { 
			"", "k", "K", "ks",
			"n", "nj", "nh", "d", "l", "lg", "lm", "lb",
			"ls", "lt", "lp", "lh", "m", "b", "bs", "s",
			"ss", "ng", "j", "ch", "c", "t", "p", "h" };

		/** 단일 자음 - ㄱ,ㄴ,ㄷ,ㄹ... (ㄸ,ㅃ,ㅉ은 단일자음(초성)으로 쓰이지만 단일자음으론 안쓰임) */
		/*public static String[] arrSingleJaumEng = {
		  	"r", "R", "rt",
			"s", "sw", "sg", "e","E" ,"f", "fr", "fa", "fq",
			"ft", "fx", "fv", "fg", "a", "q","Q", "qt", "t",
			"T", "d", "w", "W", "c", "z", "x", "v", "g" };*/

		public String change(String insert) {

				String word 		= insert; // 분리할 단어
			    String resultEng	    = "";	// 알파벳으로
	
				for (int i = 0; i < word.length(); i++) {
					
					/*  한글자씩 읽어들인다. */
					char chars = (char) (word.charAt(i) - 0xAC00);
					
					if (chars >= 0 && chars <= 11172) {
						/* A. 자음과 모음이 합쳐진 글자인경우 */
						
		   /* A-1. 초/중/종성 분리 */
						int chosung 	= chars / (21 * 28);
						int jungsung 	= chars % (21 * 28) / 28;
						int jongsung 	= chars % (21 * 28) % 28;
	
						/* 알파벳으로 */
						resultEng = resultEng + arrChoSungEng[chosung] + arrJungSungEng[jungsung];
						if (jongsung != 0x0000) {
	
						/* A-3. 종성이 존재할경우 result에 담는다 */
							resultEng =  resultEng + arrJongSungEng[jongsung];
						}
					} else {
						/* B. 한글이 아니거나 자음만 있을경우 */
	
							/* 알파벳으로 */
							if( chars>=34127 && chars<=34147) {
								
								/* 단일모음인 경우 */
								int moum 	= (chars-34127);
								resultEng = resultEng + arrJungSungEng[moum];
								
							} else {
	
								/* 알파벳인 경우 */
								resultEng = resultEng + ((char)(chars + 0xAC00));
	
							}

					}//if

				}//for
				
				// 디버깅
//					System.out.println("단어     : " + word);
//					System.out.println("자음분리 : " + result);
//					System.out.println("알파벳   : " + resultEng);
				
				return resultEng;
		}

}
