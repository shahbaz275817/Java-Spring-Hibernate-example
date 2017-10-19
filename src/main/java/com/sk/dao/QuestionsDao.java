    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sk.dao;

import com.sk.entity.Questions;
import com.sk.entity.Response;
import java.util.List;
//import javax.transaction.Transactional;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.NativeQuery;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
/**
 *
 * @author Shahbaz
 */
@Repository
public class QuestionsDao {
    @Autowired
    SessionFactory sessionFactory;
    @Transactional
    public void addQuestion(Questions q){
        Session session=sessionFactory.getCurrentSession();
        session.save(q);
    }
    
    @Transactional
    public List<Questions> getQuestions(){
        Session session=sessionFactory.getCurrentSession();
        Query<Questions> query=session.createQuery("from Questions",Questions.class);
        List<Questions> questions=query.list();
        return questions;
    }
    
    @Transactional
    public List<Questions> getTestQuestions(){
        Session session=sessionFactory.getCurrentSession();
        NativeQuery<Questions> query=session.createNativeQuery("select * from questions order by rand() limit 5",Questions.class);
        List<Questions> questions=query.list();
        return questions;
    }
    
    @Transactional
    public int verify(Response response){
        int score=0;
        String qid[]={response.getQid1(),response.getQid2(),response.getQid3(),response.getQid4(),response.getQid5()};
        String ans[]={response.getAns1(),response.getAns2(),response.getAns3(),response.getAns4(),response.getAns5()}; 
        Session session=sessionFactory.getCurrentSession();
        for(int i=0;i<5;i++){
            //NativeQuery<Questions> query=session.createNativeQuery("select answer from questions where qid='"+qid[i]+"' and answer='"+ans[i]+"'");
            Query<Questions> query1=session.createQuery("from Questions where qid='"+qid[i]+"' and answer='"+ans[i]+"'",Questions.class);
            //NativeQuery<Questions> query1=session.createNativeQuery("select qid, answer from questions where qid='"+qid[i]+"' and answer='"+ans[i]+"'",Questions.class);
            Questions q=query1.uniqueResult();
            if(q!=null)
                score++;
            System.out.println(q);
        }
        return score;
    }
}
