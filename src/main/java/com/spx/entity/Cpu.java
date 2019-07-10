package com.spx.entity;

/*
* CPU对象
* */
public class Cpu {

    /*Intel 酷睿i5 7500
    ¥1399
    插槽类型：LGA 1151
    CPU主频：3.4GHz
    动态加速频率：3.8GHz
    三级缓存：6MB
    核心数量：四核心 四线程
    更多参数>>*/

    private int id;
    private String name;
    private int price;
    private String cc;
    private String zp;
    private String dtjspl;
    private String sjhc;
    private String hxsl;
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

    public String getCc() {
        return cc;
    }

    public void setCc(String cc) {
        this.cc = cc;
    }

    public String getZp() {
        return zp;
    }

    public void setZp(String zp) {
        this.zp = zp;
    }

    public String getDtjspl() {
        return dtjspl;
    }

    public void setDtjspl(String dtjspl) {
        this.dtjspl = dtjspl;
    }

    public String getSjhc() {
        return sjhc;
    }

    public void setSjhc(String sjhc) {
        this.sjhc = sjhc;
    }

    public String getHxsl() {
        return hxsl;
    }

    public void setHxsl(String hxsl) {
        this.hxsl = hxsl;
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
