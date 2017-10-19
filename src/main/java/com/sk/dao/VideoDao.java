/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sk.dao;

import com.sk.entity.Videos;
import javax.transaction.Transactional;
import org.hibernate.SessionFactory;
import org.hibernate.Session;
import org.hibernate.query.NativeQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Shahbaz
 */
@Repository
public class VideoDao {
    
    
    @Autowired
    SessionFactory sessionFactory;
    
    @Transactional
    public Videos getPlaylistInfo(String lang){
        Session session = sessionFactory.getCurrentSession();
        NativeQuery<Videos> query=session.createNativeQuery("select * from videosurl where lang='"+lang+"'",Videos.class);
        Videos vid=query.uniqueResult();
        return vid;
    }
}
