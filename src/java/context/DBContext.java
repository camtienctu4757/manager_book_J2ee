/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package context;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


/**
 *
 * @author camti
 */
public class DBContext {
    
     public Connection getConnection(){  
         Connection con = null;
         try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rlc_new", "root","");
         }
         catch (ClassNotFoundException er) {
			er.printStackTrace();
		}catch(SQLException e){
                    e.printStackTrace();
                }catch(Exception ex){
                    ex.printStackTrace();
                }
    
         return con;
    }
}
