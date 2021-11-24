/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package connect;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author HP
 */
public class config {
    Connection con = null;
     public Connection getcon()
     {
         try
         {
             Class.forName("com.mysql.jdbc.Driver");
                     con=DriverManager.getConnection("jdbc:mysql://localhost:3306/reg", "root","");
                     
         }
          catch(Exception e)
            {
            e.printStackTrace();
            }
             return con;
     }
    
         public static void main(String[] args)
         {
             config c=new config();
             Connection con1=c.getcon();
             System.out.println("Connection is:" +con1);
         }
}
