package edu.daw.practica5;

import java.security.MessageDigest;
import org.apache.commons.codec.digest.DigestUtils;

public class Cifrado {

    public String cifrar(String pass) {
        String sha256hex = DigestUtils.sha256Hex(pass);   
        return sha256hex;
    }

    public boolean descifrar(String pass1texto, String pass2) {
        if (DigestUtils.sha256Hex(pass1texto).equals(pass2)) {
            return true;
        } else return false;
    }

}
