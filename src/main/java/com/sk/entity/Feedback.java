package com.sk.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Feedback 
{
        @Id
        private int feedbackId;
	private String name;
	private String mail;
	private String subj;
	private String msg;

    public int getFeddbackId() {
        return feedbackId;
    }

    public void setFeddbackId(int feedbackId) {
        this.feedbackId = feedbackId;
    }

	public Feedback(){}
	
	
	public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getSubj() {
        return subj;
    }

    public void setSubj(String subj) {
        this.subj = subj;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    @Override
    public String toString() {
        return "Feedback{" + "feedbackId=" + feedbackId + ", name=" + name + ", mail=" + mail + ", subj=" + subj + ", msg=" + msg + '}';
    }

    
    
}
