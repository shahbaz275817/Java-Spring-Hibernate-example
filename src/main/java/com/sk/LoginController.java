/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sk;

import com.sk.dao.LoginDao;
import com.sk.entity.User;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

/**
 *
 * @author Shahbaz
 */
@Controller
@EnableWebMvc
public class LoginController {
    
    @Autowired
    LoginDao loginDao;
    
    @RequestMapping(value="/login", produces = "text/html;charset=UTF-8")
    @ResponseBody
    public ModelAndView login(@RequestParam("username") String username,@RequestParam("password") String password,HttpServletRequest request){
            
            ModelAndView mv=new ModelAndView("redirect:/index.htm");
            HttpSession session=request.getSession();
            User usr=loginDao.checkLoginDetails(username,password);
            if(usr==null){
                session.setAttribute("loggedin",false);
                return mv;
            }
            String passworddb = usr.getPassword();
            
            if (password.equals(passworddb)) { 
                //HttpSession session=request.getSession();
                session.setAttribute("loggedin", true);
                session.setAttribute("userid",usr.getUser_id());
                session.setAttribute("name",usr.getName());
                session.setAttribute("username",usr.getUsername());
                session.setAttribute("email",usr.getMail());
                session.setAttribute("phone",usr.getPhone());
                session.setAttribute("admin",usr.getAdmin().toString());
                mv.addObject("session", session);
                return mv;
            //return "<div>Login Successful</div>";
            }
            else{
                session.setAttribute("loggedin",false);
                return mv;
            }
            //return "<div>Login Failed</div>";
        
                
    }
    
    
  
	
    @RequestMapping(value="/logout", produces = "text/html;charset=UTF-8")
    @ResponseBody
    public ModelAndView logout(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.removeAttribute("loggedin");
        session.invalidate();
        ModelAndView mv=new ModelAndView("redirect:/index.htm");
        return mv;
        
    }

    
    @RequestMapping("/signin.htm")
    public ModelAndView signin(){
        ModelAndView mv=new ModelAndView("signin.jsp");
        return mv;
    }
	

}

