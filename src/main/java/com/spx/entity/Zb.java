package com.spx.entity;

public class Zb {
    /*
    主板
    华硕PRIME B250M-PLUS
    ¥699
    主芯片组：Intel B250
    CPU插槽：LGA 1151
    主板板型：Micro ATX板型
    集成芯片：声卡/网卡
    内存类型：DDR4
    更多参数>>
     */
    private int id;
    private String name;
    private int price;
    private String zxpz;
    private String cc;
    private String bx;
    private String jcxp;
    private String nclx;
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

    public String getZxpz() {
        return zxpz;
    }

    public void setZxpz(String zxpz) {
        this.zxpz = zxpz;
    }

    public String getCc() {
        return cc;
    }

    public void setCc(String cc) {
        this.cc = cc;
    }

    public String getBx() {
        return bx;
    }

    public void setBx(String bx) {
        this.bx = bx;
    }

    public String getJcxp() {
        return jcxp;
    }

    public void setJcxp(String jcxp) {
        this.jcxp = jcxp;
    }

    public String getNclx() {
        return nclx;
    }

    public void setNclx(String nclx) {
        this.nclx = nclx;
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
