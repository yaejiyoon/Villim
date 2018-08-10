package kh.spring.controller;


import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.social.connect.Connection;
import org.springframework.social.google.api.Google;
import org.springframework.social.google.api.impl.GoogleTemplate;
import org.springframework.social.google.api.plus.Person;
import org.springframework.social.google.api.plus.PlusOperations;
import org.springframework.social.google.connect.GoogleConnectionFactory;
import org.springframework.social.oauth2.AccessGrant;
import org.springframework.social.oauth2.GrantType;
import org.springframework.social.oauth2.OAuth2Operations;
import org.springframework.social.oauth2.OAuth2Parameters;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class MainController {
	
	//---재호
	@Autowired
	private GoogleConnectionFactory googleConnectionFactory;
	@Autowired
	private OAuth2Parameters googleOAuth2Parameters;
	
	
	@RequestMapping(value = "/", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView welcome(HttpSession session) {
		
		ModelAndView mav = new ModelAndView();
		
		//---재호
		OAuth2Operations oauthOperations = googleConnectionFactory.getOAuthOperations();
		String url = oauthOperations.buildAuthorizeUrl(GrantType.AUTHORIZATION_CODE, googleOAuth2Parameters);
		System.out.println(url);
		System.out.println(":" + url);
		mav.addObject("google_url", url);
		//---
		session.setAttribute("googleUrl", url);
		mav.addObject("result","result");
		mav.setViewName("index");
		System.out.println("ffff");
		
		
		return mav;
	}
	
	//---재호
	@RequestMapping(value = "/oauth2callback", method = { RequestMethod.GET, RequestMethod.POST})
	public ModelAndView googleCallback(HttpServletRequest request) throws IOException {
		System.out.println("googleCallback");
		ModelAndView mav = new ModelAndView();
		System.out.println("asdasdasd");
		String code = request.getParameter("code");
		System.out.println(code);
		
		
		OAuth2Operations oauthOperations = googleConnectionFactory.getOAuthOperations();
		  AccessGrant accessGrant = oauthOperations.exchangeForAccess(code , googleOAuth2Parameters.getRedirectUri(),
		      null);
		  System.out.println(1);
		  String accessToken = accessGrant.getAccessToken();
		  Long expireTime = accessGrant.getExpireTime();
		  if (expireTime != null && expireTime < System.currentTimeMillis()) {
		    accessToken = accessGrant.getRefreshToken();
		    System.out.printf("accessToken is expired. refresh token = {}", accessToken);
		  }
		  System.out.println(2);
		  Connection<Google> connection = googleConnectionFactory.createConnection(accessGrant);
		  Google google = connection == null ? new GoogleTemplate(accessToken) : connection.getApi();
		  System.out.println(3);
		  PlusOperations plusOperations = google.plusOperations();
		  Person profile = plusOperations.getGoogleProfile();
		  System.out.println(4);
		  mav.addObject("accountEmail", profile.getAccountEmail());
		  mav.addObject("googlePw", profile.getId());
		  mav.addObject("firstName", profile.getFamilyName());
		  mav.addObject("secondName", profile.getGivenName());
		  mav.addObject("picture", profile.getImageUrl());
		  System.out.println(profile.getImageUrl());
		  System.out.println("생일" + profile.getGender());
		  mav.setViewName("signup");
		
		return mav;
	}
	
	@RequestMapping("/homeMain.do")
	public String homeMain() {
		return "home_main";
	}
}
