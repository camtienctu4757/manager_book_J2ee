/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package user;

/**
 *
 * @author camti
 */
public class Book {
     
    String maSach,maLoai,tenSach,keSach,xuatBan,chuDe,tacgia;
    int soLuong;
    
    public Book(){
        
}

    public Book(String maSach, String maLoai, String tenSach, String keSach, String xuatBan, String chuDe, String tacgia, int soLuong) {
        this.maSach = maSach;
        this.maLoai = maLoai;
        this.tenSach = tenSach;
        this.keSach = keSach;
        this.xuatBan = xuatBan;
        this.chuDe = chuDe;
        this.tacgia = tacgia;
        this.soLuong = soLuong;
    }

    public String getMaSach() {
        return maSach;
    }

    public void setMaSach(String maSach) {
        this.maSach = maSach;
    }

    public String getMaLoai() {
        return maLoai;
    }

    public void setMaLoai(String maLoai) {
        this.maLoai = maLoai;
    }

    public String getTenSach() {
        return tenSach;
    }

    public void setTenSach(String tenSach) {
        this.tenSach = tenSach;
    }

    public String getKeSach() {
        return keSach;
    }

    public void setKeSach(String keSach) {
        this.keSach = keSach;
    }

    public String getXuatBan() {
        return xuatBan;
    }

    public void setXuatBan(String xuatBan) {
        this.xuatBan = xuatBan;
    }

    public String getChuDe() {
        return chuDe;
    }

    public void setChuDe(String chuDe) {
        this.chuDe = chuDe;
    }

    public String getTacgia() {
        return tacgia;
    }

    public void setTacgia(String tacgia) {
        this.tacgia = tacgia;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }
    
    
    
}
