/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sk;

import com.sk.dao.RegistrationDao;
import com.sk.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
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
public class RegistrationController {
    
    @Autowired
    RegistrationDao registrationDao;
    
    @RequestMapping("/register.htm")
    public ModelAndView registration(){
        ModelAndView mv=new ModelAndView("/register.jsp");
        return mv;
    }
    
    
    @RequestMapping(value="/adduser", produces = "text/html;charset=UTF-8")
    @ResponseBody
    public ModelAndView addUser(@ModelAttribute User user){
        if(registrationDao.addUser(user)){
            ModelAndView mv=new ModelAndView("/register.jsp");
            mv.addObject("status","Registration Successful");
            return mv;
            //return "<div>Registration Successful</div>";
        }
        else{
            //return "<div>Registration failed!</div>";
            ModelAndView mv=new ModelAndView("/register.jsp");
            mv.addObject("status","Registration Failed");
            return mv;
        }
    }
    

}
