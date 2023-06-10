package pos.application;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import javax.swing.JOptionPane;

import java.util.Random;

interface Pembayaran {

    float getTotalHarga();

    void setTotalHarga(float totalHarga);

    LocalDateTime getWaktuPembayaran();

    void setWaktuPembayaran(LocalDateTime waktuPembayaran);

    int getIDPembayaran();

    void setIDPembayaran(int IDPembayaran);
}

////class yang menyimpan satu transaksi dan data yang berkaitan
//public abstract class MetodePembayaran implements Pembayaran {
//
//    protected float total_harga;
//    protected LocalDateTime waktu_pembayaran;
//    protected int id_pembayaran;
//    protected PaymentState status;
//    
//    public enum PaymentState {
//        PENDING,
//        SUCCESSFUL,
//        CANCELLED
//    }
//
//    public abstract void Payment();
//
//    public MetodePembayaran(float total_harga) {
//        this.status = PaymentState.PENDING;
//        this.total_harga = total_harga;
//        this.waktu_pembayaran = LocalDateTime.now();
//    }
//
//    @Override
//    public float getTotalHarga() {
//        return this.total_harga;
//    }
//
//    @Override
//    public void setTotalHarga(float totalHarga) {
//        this.total_harga = totalHarga;
//    }
//
//    @Override
//    public LocalDateTime getWaktuPembayaran() {
//        return waktu_pembayaran;
//    }
//    
//    public String getWaktuPembayaranStr() {
//        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd hh:mm:ss");
//        return waktu_pembayaran.format(formatter);
//    }
//
//    @Override
//    public void setWaktuPembayaran(LocalDateTime waktuPembayaran) {
//        this.waktu_pembayaran = waktuPembayaran;
//    }
//
//    @Override
//    public int getIDPembayaran() {
//        return this.id_pembayaran;
//    }
//
//    @Override
//    public void setIDPembayaran(int IDPembayaran) {
//        this.id_pembayaran = IDPembayaran;
//    }
//        
//    public PaymentState getStatus(){
//        return this.status;
//    }
//    
//    public void setStatus(PaymentState status){
//        this.status = status;
//    }
//}
