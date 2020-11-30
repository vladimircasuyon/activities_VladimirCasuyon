/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Assessment;

import java.io.File;


/**
 *
 * @author User
 */
public class Assessment_7 {
    
    public static void main(String[] args) {
        
        File file = new File("C:\\Users\\User\\Desktop");
        String[] array = file.list();
        
        for (int i = 0; i < array.length; i++) {
            System.out.println("" + array[i]);
        }   
    }
}
