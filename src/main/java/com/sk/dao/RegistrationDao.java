/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sk.dao;

import com.sk.entity.Questions;
import com.sk.entity.User;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.Session;
import org.hibernate.query.NativeQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Shahbaz
 */

@Repository
public class RegistrationDao {
    
    @Autowired
    SessionFactory sessionFactory;
    
    @Transactional
    public boolean addUser(User user){
        Session session=sessionFactory.getCurrentSession();
        boolean successful=false;
        try{
//            NativeQuery<User> query=session.createNativeQuery("select user_id from user_details order by user_id desc limit 1",User.class);
//            List<User> usr=query.list();
//            System.out.println(usr.get(0));
//            String lastUserId=query.toString();
//            int id=Integer.parseInt(lastUserId);
//            id++;
//            String newUserId=String.valueOf(id);
//            user.setUser_id(newUserId);
            session.save(user);
            successful=true;
        }
        catch(HibernateException e){
            e.printStackTrace();
        }
        return successful;
    }
    
}
