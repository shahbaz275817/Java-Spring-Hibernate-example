
package com.sk.dao;

import com.sk.entity.Feedback;
import org.springframework.stereotype.Component;
import java.sql.*;
import java.util.List;
import org.hibernate.query.Query;
import javax.transaction.Transactional;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
/**
 *
 * @author Shahbaz
 */
@Component
public class FeedbackDao {
    @Autowired
    private SessionFactory sessionFactory;
    @Transactional
    public void addFeedback(Feedback fb){
//        String query="insert into feedbackdata values(?,?,?,?)";
//        
//		try {
//			Class.forName("com.mysql.jdbc.Driver");
//			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/mvcproject","root","ruallok123"); 		
//			PreparedStatement st=conn.prepareStatement(query);
//			st.setString(1, fb.getName());
//                        st.setString(2, fb.getMail());
//                        st.setString(3, fb.getSubj());
//                        st.setString(4,fb.getMsg());
//			st.executeUpdate();
//			
//		} catch (Exception e) {
//			
//			e.printStackTrace();
//		}
        Session session =sessionFactory.getCurrentSession();
        session.save(fb);
    
    }
    
    @Transactional
    public List<Feedback> getFeedback(){
        Session session=sessionFactory.getCurrentSession();
        Query<Feedback> q=session.createQuery("from Feedback");
        List<Feedback> l= q.list();
        System.out.println(l);
        return l;

    }
    
    
}
