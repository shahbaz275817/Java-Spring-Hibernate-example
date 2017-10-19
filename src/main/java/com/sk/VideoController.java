/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sk;

import com.sk.dao.VideoDao;
import com.sk.entity.Videos;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Shahbaz
 */

@Controller
public class VideoController {
    
    
    @Autowired
    VideoDao videoDao;
    
    @RequestMapping("/play")
    public ModelAndView playVideo(@RequestParam("lang") String lang){
        ModelAndView mv=new ModelAndView("/play.jsp");
        Videos video=videoDao.getPlaylistInfo(lang);
        String playlistUrl=video.getPlaylist_url();
        mv.addObject("lang", video.getLang());
        mv.addObject("info",video.getInfo());
        mv.addObject("url",playlistUrl);
        return mv;
    }
     
    
//    @RequestMapping("/play")
//    public ModelAndView playVideo(){
//        ModelAndView mv=new ModelAndView("/play.jsp");
//        return mv;
//    }
}
