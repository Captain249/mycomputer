package com.spx.entity;

/*
硬盘
希捷Barracuda 1TB 7200转 64MB 单碟
¥329
容量：1000GB
接口类型：SATA3.0
转速：7200rpm
缓存：64MB
尺寸：3.5英寸
更多参数>>
 */
public class Yp {

    private int id;
    private String name;
    private int price;
    private String rl;
    private String jklx;
    private String zs;
    private String hc;
    private String cc;
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

    public String getJklx() {
        return jklx;
    }

    public void setJklx(String jklx) {
        this.jklx = jklx;
    }

    public String getZs() {
        return zs;
    }

    public void setZs(String zs) {
        this.zs = zs;
    }

    public String getHc() {
        return hc;
    }

    public void setHc(String hc) {
        this.hc = hc;
    }

    public String getCc() {
        return cc;
    }

    public void setCc(String cc) {
        this.cc = cc;
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
