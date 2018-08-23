package kh.spring.aspect;

import javax.sound.midi.MidiDevice.Info;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.dto.MemberDTO;
import kh.spring.interfaces.MemberService;

@Aspect
@Component
public class MemberAspect {
	
	@Autowired
	MemberDTO dto;
	
	@Autowired
	MemberService service;
	
	@Pointcut("execution(* kh.spring.controller.MemberController.snslogin(..))")
	public void login() {}
	

	
	protected Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Around("login()")
	public ModelAndView loginAop(ProceedingJoinPoint pjp) {
		logger.info("출력");
		ModelAndView mav = new ModelAndView();
		System.out.println("aspect");
		MemberDTO dto = (MemberDTO)pjp.getArgs()[0];
		String email = dto.getMember_email();
		
		Object result = null;
		try {
		result = pjp.proceed();
		System.out.println(result);
		
		
		mav.setViewName("index");
		System.out.println(result+"안녕");
		return mav;
		}catch(Throwable e) {
			e.printStackTrace();
			return mav;
		}
		
		
	}

}
