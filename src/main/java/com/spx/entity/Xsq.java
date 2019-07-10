package com.spx.entity;

/*
显示器
三星C49HG90
¥16999
屏幕尺寸：49英寸
产品类型：LED显示器，广视
视频接口：HDMI×2，Display
面板类型：VA
最佳分辨率：3840x1080
更多参数>>
 */
public class Xsq {

    private int id;
    private String name;
    private int price;
    private String pmcc;
    private String cplx;
    private String spjk;
    private String mblx;
    private String zjfbl;
    private int fs;//打分
    private String ms;//描述
    private String more;//更多

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getPmcc() {
        return pmcc;
    }

    public void setPmcc(String pmcc) {
        this.pmcc = pmcc;
    }

    public String getCplx() {
        return cplx;
    }

    public void setCplx(String cplx) {
        this.cplx = cplx;
    }

    public String getSpjk() {
        return spjk;
    }

    public void setSpjk(String spjk) {
        this.spjk = spjk;
    }

    public String getMblx() {
        return mblx;
    }

    public void setMblx(String mblx) {
        this.mblx = mblx;
    }

    public String getZjfbl() {
        return zjfbl;
    }

    public void setZjfbl(String zjfbl) {
        this.zjfbl = zjfbl;
    }

    public int getFs() {
        return fs;
    }

    public void setFs(int fs) {
        this.fs = fs;
    }

    public String getMs() {
        return ms;
    }

    public void setMs(String ms) {
        this.ms = ms;
    }

    public String getMore() {
        return more;
    }

    public void setMore(String more) {
        this.more = more;
    }
}
