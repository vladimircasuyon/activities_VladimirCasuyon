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


public class ArrayMethods {
    public ArrayList <String> arrsList (String [] array){
      
       ArrayList <String> Array = new ArrayList <>();
       
       for (int i = 0; i < array.length; i++) {
           Array.add(array[i]);
       }
       return Array; 
   }
}
