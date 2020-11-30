/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package class_and_method;

import java.util.ArrayList;

/**
 *
 * @author User
 */
public class Class2 {
    public static void main(String[] args) {
        
         ArrayMethods methods = new ArrayMethods();
      
         ArrayList <String> arrs = new ArrayList<>();
      
         String [] String = new String [3];
        
        String[0]= "casuyon";
        String[1]= "vladimir";
        String[2]= "subong";
     
         arrs =  methods.arrsList(String);
        
         for (int i = 0; i < arrs.size(); i++) {
            
             System.out.println(arrs.get(i));
        } 
    }
}
