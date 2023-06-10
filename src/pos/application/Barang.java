/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pos.application;

import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author chris
 */

class Barang {
    protected String kode;
    protected String nama;
    protected double harga;

    public Barang(String kode, String nama, double harga) {
        this.kode = kode;
        this.nama = nama;
        this.harga = harga;
    }

    // Getter dan setter untuk kode, nama, dan harga
}

class Token extends Barang {
    private String no_meteran;
    private double nominal;
    private String token;

    public Token(String kode, String no_meteran, double nominal, double harga) {
        super(kode, "", harga);
        this.no_meteran = no_meteran;
        this.nominal = nominal;
        generateToken();
    }

    private void generateToken() {
        // Logika untuk menghasilkan token secara acak dengan menggunakan kode, no_meteran, nominal, dan harga dari Barang
        // ...

        token = "Token yang dihasilkan";
    }

    public String getNoMeteran() {
        return no_meteran;
    }

    public double getNominal() {
        return nominal;
    }

    public String getToken() {
        return token;
    }
}

class Makanan extends Barang {
    private String kadaluwarsa;

    public Makanan(String kode, String nama, double harga, String kadaluwarsa) {
        super(kode, nama, harga);
        this.kadaluwarsa = kadaluwarsa;
    }

    public String getKadaluwarsa() {
        return kadaluwarsa;
    }
}

class Pulsa extends Barang {
    private String noTelepon;

    public Pulsa(String kode, String nama, double harga, String noTelepon) {
        super(kode, nama, harga);
        this.noTelepon = noTelepon;
    }

    public String getNoTelepon() {
        return noTelepon;
    }
}

    





    

