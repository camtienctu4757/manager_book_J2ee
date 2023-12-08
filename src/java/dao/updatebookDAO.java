/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import user.Book;


/**
 *
 * @author camti
 */
public class updatebookDAO {
    Connection cnn = null;
    PreparedStatement sm = null;
    ResultSet r = null;
    
    public void add(String loaiSach,String tenSach, String ttKe, String xbSach, String chuDe, String tacGia,String soLuong){
        try{
            String query = "INSERT INTO `sach`(`id_sach`, `id_danhmuc`, `ten_sach`, `thu_tu_ke`, `thong_tinxb`, `chu_de`, `tac_gia`, `so_luong`) "
                    + "VALUES ('',?,?,?,?,?,?,?)";
            cnn = new DBContext().getConnection();
            sm = cnn.prepareStatement(query);
            sm.setString(1,loaiSach);
            sm.setString(2, tenSach);
            sm.setString(3,ttKe);
            sm.setString(4, xbSach);
            sm.setString(5,chuDe);
            sm.setString(6, tacGia);
            sm.setString(7, soLuong);   
            r = sm.executeQuery();

        }
        catch(Exception e){
            
        }
 
    }
    
    
      public void delete(){
        try{
            String query = "";
            cnn = new DBContext().getConnection();
            sm = cnn.prepareStatement(query);
//            sm.setString(1, user);
//            sm.setString(2, pass);
            r = sm.executeQuery();
            while(r.next()){
//               Account a = new Account(r.getString(1),r.getString(2),r.getString(3),r.getString(4),r.getString(5));
//               return a;
               
            }
        }
        catch(Exception e){
            
        }
       
    }
       public void chage(){
        try{
            String query = "";
            cnn = new DBContext().getConnection();
            sm = cnn.prepareStatement(query);
//            sm.setString(1, user);
//            sm.setString(2, pass);
            r = sm.executeQuery();
            while(r.next()){
//               Account a = new Account(r.getString(1),r.getString(2),r.getString(3),r.getString(4),r.getString(5));
//               return a;
               
            }
        }
        catch(Exception e){
            
        }
       
    }
    
    
    
}
