/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sk.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author Shahbaz
 */
@Entity
@Table(name="videosurl")
public class Videos {
    @Id
    String lang;
    String playlist_url;
    String info;

    public String getLang() {
        return lang;
    }

    public void setLang(String lang) {
        this.lang = lang;
    }

    public String getPlaylist_url() {
        return playlist_url;
    }

    public void setPlaylist_url(String playlist_url) {
        this.playlist_url = playlist_url;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    @Override
    public String toString() {
        return "Videos{" + "lang=" + lang + ", playlist_url=" + playlist_url + ", info=" + info + '}';
    }
    
    
}
