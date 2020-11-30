/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package API_programs;

import java.util.ArrayList;

/**
 *
 * @author User
 */
public class java_util {
    public static void main(String[] args) {
        
    ArrayList <Object> arrsList = new ArrayList <> ();  
        
       arrsList.add("123");
       arrsList.add("1234");
       arrsList.add("12345");
       arrsList.add("123456");
       
        for (int i = 0; i < arrsList.size(); i++) {
            System.out.println(arrsList.get(i));
        } 
    } 
}
