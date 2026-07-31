package com.food_Application.util;
import org.mindrot.jbcrypt.BCrypt;

public class Test1 {
    public static void main(String[] args) {
        String password = "admin123";

        String hashed = BCrypt.hashpw(password, BCrypt.gensalt());

        System.out.println("Hashed Password: " + hashed);

        System.out.println("Match: " +
                BCrypt.checkpw(password, hashed));
    }
}