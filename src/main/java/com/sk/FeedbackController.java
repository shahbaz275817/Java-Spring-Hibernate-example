/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sk;

import com.sk.dao.FeedbackDao;
import com.sk.entity.Feedback;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Shahbaz
 */
@Controller
public class FeedbackController {
    
    @Autowired
    FeedbackDao fdao;
    
    Feedback feedback;
    
    @RequestMapping("/addfeedback")
	//public String addFeedback(@RequestParam("name") String name,@RequestParam("email") String email,@RequestParam("reg") String reg,@RequestParam("code") String code,@RequestParam("msg") String msg,@RequestParam("rating") int rating)
	
	public String addFeedback(@ModelAttribute("feedback") Feedback feedback)
	{
		//feedback = new Feedback(name,email,reg,code,rating);
		fdao.addFeedback(feedback);
		return "index.jsp";
	}
	
	@RequestMapping("/getfeedbacks.htm")
	public ModelAndView getFeedbacks(HttpServletRequest request)
	{
                HttpSession session=request.getSession();
		ModelAndView mv = new ModelAndView("feedbacks.jsp");
                List<Feedback> fb=fdao.getFeedback();
		mv.addObject("feedbacks",fb);
                mv.addObject("session",session);
		return mv;
	}
    
}
