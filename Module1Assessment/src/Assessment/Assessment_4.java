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
public class Assessment_4 {
    
    public static void main(String[] args) {
        
        String stringGiven = "HAKDOG";
        String stringCompare = "OG";
        String temp = stringGiven.substring(stringGiven.length()-2,stringGiven.length());
        System.out.println("The Given strings is: "+stringGiven);
        System.out.println("The string containing "+stringCompare+" at last: "+temp.equals(stringCompare));
        
    }
}
