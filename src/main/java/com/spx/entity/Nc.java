package com.spx.entity;

/*
内存
影驰GAMER 8GB DDR4 2400
¥769
容量：8GB
容量描述：单条（8GB）
类型：DDR4
主频：2400MHz
工作电压：1.2V
更多参数>>
 */
public class Nc {

    private int id;
    private String name;
    private int price;
    private String rl;
    private String rlms;
    private String lx;
    private String zp;
    private String gzdy;
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

    public String getRl() {
        return rl;
    }

    public void setRl(String rl) {
        this.rl = rl;
    }

    public String getRlms() {
        return rlms;
    }

    public void setRlms(String rlms) {
        this.rlms = rlms;
    }

    public String getLx() {
        return lx;
    }

    public void setLx(String lx) {
        this.lx = lx;
    }

    public String getZp() {
        return zp;
    }

    public void setZp(String zp) {
        this.zp = zp;
    }

    public String getGzdy() {
        return gzdy;
    }

    public void setGzdy(String gzdy) {
        this.gzdy = gzdy;
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
