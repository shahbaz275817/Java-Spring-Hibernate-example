/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sk.dao;

import com.sk.entity.Questions;
import com.sk.entity.User;
import org.hibernate.SessionFactory;
import org.hibernate.Session;
import org.hibernate.query.NativeQuery;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Shahbaz
 */

@Repository
public class LoginDao {
    @Autowired
    SessionFactory sessionFactory;
    
    @Transactional
    public User checkLoginDetails(String username,String password){
        Session session=sessionFactory.getCurrentSession();
        NativeQuery<User> query=session.createNativeQuery("select * from user_details where username = '"+username+"'",User.class);
        //Query<User> query =session.createQuery("select password from user_details where username = :uname",User.class).setParameter("uname",username);
        User usr=query.uniqueResult();
        return usr;
//        String passworddb = usr.getPassword();
//        if(password.equals(passworddb))
//            return true;
//        else
//            return false;
    }
}
