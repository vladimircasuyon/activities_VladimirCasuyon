/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Assessment;


/**
 *
 * @author User
 */
public class Assessment_5 {
     public static void main(String[] args) {
        
        String txt = "hakdog in dog";
        for (int i =0; i < txt.length(); i++){
         
            if (txt.charAt(i)!= ' ' && txt.charAt(i) != 'h'&& txt.charAt(i) != 'i'){
             
                System.out.print(txt.charAt(i));
        
               
            }
               
        }
    }    
 }

