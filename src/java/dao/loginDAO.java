/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import user.Account;
import context.DBContext;
import static java.lang.System.out;


/**
 *
 * @author camti
 */
public class loginDAO {
    Connection cnn = null;
    PreparedStatement sm = null;
    ResultSet r = null;
    
    public Account checkin(String user, String pass){
        try{
            String query = "SELECT * FROM `user` WHERE user_id=? AND password=?;";
            cnn = new DBContext().getConnection();
            sm = cnn.prepareStatement(query);
            sm.setString(1, user);
            sm.setString(2, pass);
            r = sm.executeQuery();
            while(r.next()){
               Account a = new Account(r.getString(1),r.getString(2),r.getString(3),r.getString(4),r.getString(5));
               return a;
               
            }
        }
        catch(Exception e){
            
        }
        return null;
    }
    
}
