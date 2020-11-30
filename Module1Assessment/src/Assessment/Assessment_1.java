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
public class Assessment_1 {
    
    public static void main(String[] args) {
        int[] array1 = new int[5];
        int[] array2 = new int[8];
        
        array1[0] = 1;
        array1[1] = 3;
        array1[2] = 5;
        array1[3] = 7;
        array1[4] = 9;
        
        
        arraycopy(array1, 2, array2, 0, 2);
        
        for (int i = 0; i < array2.length; i++) {
            System.out.println(array2[i]);
        }
    }
    
    public static void arraycopy(int[] from,int fromstart, int[] to, int tostart, int count) {
        for (int i = 0; i < count; i++) {
            to[tostart + i] = from[fromstart + i];
        }
    }
}
