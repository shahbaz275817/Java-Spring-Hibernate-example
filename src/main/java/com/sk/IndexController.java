package com.sk;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sk.dao.FeedbackDao;
import com.sk.dao.RegistrationDao;
import com.sk.entity.Feedback;
import com.sk.entity.User;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class IndexController 
{
	
	@RequestMapping("/")
	public ModelAndView home(HttpServletRequest request)
	{
            HttpSession session=request.getSession();
            ModelAndView mv=new ModelAndView("index.jsp");
            mv.addObject("session",session);
            return mv;
            //return "index.jsp";
	}
        
        @RequestMapping("/index.htm")
        public ModelAndView homepage(HttpServletRequest request){
            HttpSession session=request.getSession();
            ModelAndView mv=new ModelAndView("index.jsp");
            mv.addObject("session",session);
            return mv;
            //return "index.jsp";
        }
	
	@RequestMapping("/feedback.htm")
	public String feedback()
	{
		return "feedback.jsp";
	}
	
	

        @RequestMapping("/addquestion.htm")
	public ModelAndView addQuestion(HttpServletRequest request)
	{
                HttpSession session=request.getSession();
		ModelAndView mv = new ModelAndView("addquestions.jsp");
		mv.addObject("session",session);
		return mv;
	}
	
	@RequestMapping("/test.htm")
        public ModelAndView test(){
            ModelAndView mv=new ModelAndView("test.jsp");
            return mv;
        }
        
        @RequestMapping("/videos.htm")
        public ModelAndView videos(){
            ModelAndView mv=new ModelAndView("videos.jsp");
            return mv;
        }
        
//        @Autowired
//        RegistrationDao registrationDao;
//        
//        @RequestMapping("/adduser")
//        public String addUser(@ModelAttribute User user){
//        if(registrationDao.addUser(user)){
//            return "Registration Successful";
//        }
//        else
//            return "Registration failed!";
//        
//    }
        
        @RequestMapping("/about.htm")
	public ModelAndView about(HttpServletRequest request)
	{
            //HttpSession session=request.getSession();
            ModelAndView mv=new ModelAndView("about.jsp");
            //mv.addObject("session",session);
            return mv;
            //return "index.jsp";
	}
}