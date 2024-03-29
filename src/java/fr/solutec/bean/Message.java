/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.bean;

import java.sql.Timestamp;

/**
 *
 * @author esic
 */
public class Message {
    
    private int idMessage;
    private String corpsMessage;
    private Timestamp dateMessage;
    private int user_idEmetteur;
    private int user_idRecepteur;

    //Constructors
    public Message() {
    }

    public Message(String corpMessage, Timestamp dateMessage, int user_idEmetteur, int user_idRecepteur) {
        this.corpsMessage = corpMessage;
        this.dateMessage = dateMessage;
        this.user_idEmetteur = user_idEmetteur;
        this.user_idRecepteur = user_idRecepteur;
    }

    
    //Getters
    public int getIdMessage() {
        return idMessage;
    }

    public String getCorpsMessage() {
        return corpsMessage;
    }

    public Timestamp getDateMessage() {
        return dateMessage;
    }

    public int getUser_idEmetteur() {
        return user_idEmetteur;
    }

    public int getUser_idRecepteur() {
        return user_idRecepteur;
    }

    //Setters
    public void setIdMessage(int idMessage) {
        this.idMessage = idMessage;
    }

    public void setCorpsMessage(String corpsMessage) {
        this.corpsMessage = corpsMessage;
    }

    public void setDateMessage(Timestamp dateMessage) {
        this.dateMessage = dateMessage;
    }

    public void setUser_idEmetteur(int user_idEmetteur) {
        this.user_idEmetteur = user_idEmetteur;
    }

    public void setUser_idRecepteur(int user_idRecepteur) {
        this.user_idRecepteur = user_idRecepteur;
    }
    
    
}
