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
    private String loginAdmin;

    public Admin() {
    }

    public Admin(User user, String loginAdmin) {
        this.user = user;
        this.loginAdmin = loginAdmin;
    }

    public User getUser() {
        return user;
    }

    public String getLoginAdmin() {
        return loginAdmin;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public void setLoginAdmin(String loginAdmin) {
        this.loginAdmin = loginAdmin;
    }

    @Override
    public String toString() {
        return "Admin{" + "user=" + user + ", loginAdmin=" + loginAdmin + '}';
    } 
    
    }
 
    
    
    
