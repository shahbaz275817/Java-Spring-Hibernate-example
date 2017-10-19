/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sk;
import com.sk.entity.Response;
import com.sk.dao.QuestionsDao;
import com.sk.entity.Questions;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

/**
 *
 * @author Shahbaz
 */
@Controller
@EnableWebMvc
public class QuestionsController {
    @Autowired
    QuestionsDao qdao;
    @RequestMapping("/addquestion")
    public ModelAndView addQuestions(@ModelAttribute Questions q,HttpServletRequest request){
        HttpSession session=request.getSession();
        ModelAndView mv=new ModelAndView("redirect:/addquestions.jsp");
        qdao.addQuestion(q);
        mv.addObject("session",session);
        return mv;
    }
    
    @RequestMapping("/getquestions.htm")
    @ResponseBody
    public ModelAndView getQuestions(HttpServletRequest request){
        HttpSession session=request.getSession();
        ModelAndView mv=new ModelAndView("allquestions.jsp");
        //List<Questions> q=new ArrayList<>();
        //q=qdao.getQuestions();
        //return q.toString();
        List<Questions> q=qdao.getQuestions();
        mv.addObject("questions", q);
        mv.addObject("session",session);
        return mv;
    }
    
    @RequestMapping("/getTestQuestions")
    @ResponseBody
    public List<Questions> getTestQuestions(){
        List<Questions> q=qdao.getTestQuestions();
        return q;
    }
    
//    @RequestMapping("/test.htm")
//    @ResponseBody
//    public ModelAndView test() {
//        ModelAndView mv = new ModelAndView("test.jsp");
//        return mv;
//    }
    
    
    @RequestMapping("/verify.htm")
    public ModelAndView verify(@ModelAttribute("response") Response response){
        int result=qdao.verify(response);
        ModelAndView mv=new ModelAndView("result.jsp");
        mv.addObject("result",result);
        mv.addObject("percentage",result*20);
        return mv;
    }
}
