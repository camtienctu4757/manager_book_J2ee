/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import user.Book;
import context.DBContext;
import static java.lang.System.out;
import java.util.ArrayList;
import java.util.List;

 
/**
 *
 * @author camti
 */
public class searchDAO {
    Connection cnn = null;
    PreparedStatement sm = null;
    ResultSet r = null;
    
    public List searching(String thongtin){
        try{
            String query = "SELECT * FROM sach WHERE ten_sach LIKE ? OR chu_de LIKE ? OR tac_gia LIKE ?  ;";
            cnn = new DBContext().getConnection();
            sm = cnn.prepareStatement(query);
            sm.setString(1, '%'+thongtin+'%');
            sm.setString(2, '%'+thongtin+'%');
            sm.setString(3, '%'+thongtin+'%');
            List<Book> list = new ArrayList<Book>();
            r = sm.executeQuery();
            while(r.next()){
                Book b = new Book(r.getString(1),r.getString(2),r.getString(3),r.getString(4),r.getString(5),r.getString(6),r.getString(7), r.getInt(8));
                list.add(b);    
            }
            return list;
        }
        catch(Exception e){
            
        }
        return null;
    }
    
}
