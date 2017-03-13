/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import java.util.List;

/**
 *
 * @author pedrogonic
 */
public class TestClass {
    
    public static void main(String[] args) {
        /** Test running class */
        //System.out.println("Hello World!"); // Display the string.
        
        /** Test accessing remote DB */
        //System.out.println(db.SQLUtils.test());
        
        /** Testing for jstl loop */
        List<String> list = db.SQLUtils.test2();
        list.stream().forEach((s) -> {
            System.out.println(s);
        });
        
    }
    
}
