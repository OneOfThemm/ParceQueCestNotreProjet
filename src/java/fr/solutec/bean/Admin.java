/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.bean;

/**
 *
 * @author esic
 */
public class Admin {
    private User user;
    private String login;
    private String mdp;

    public Admin() {
    }

    public Admin(User user, String login, String mdp) {
        this.user = user;
        this.login = login;
        this.mdp = mdp;
    }

    public User getUser() {
        return user;
    }

    public String getLogin() {
        return login;
    }

    public String getMdp() {
        return mdp;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public void setMdp(String mdp) {
        this.mdp = mdp;
    }

    @Override
    public String toString() {
        return "Admin{" + "user=" + user + ", login=" + login + ", mdp=" + mdp + '}';
        
        
    }
   

        
    }
 
    
    
    
