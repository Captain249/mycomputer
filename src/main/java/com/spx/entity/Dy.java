package com.spx.entity;

public class Dy {

    /*
    电源
    航嘉冷静王蓝钻版
    ¥289
    额定功率：400W
    PFC类型：主动式
    电源类型：台式机电源
    风扇描述：12cm
    其他特点：1、45度高
    更多参数>>
     */
    private int id;
    private String name;
    private int price;
    private String edgl;
    private String pfclx;
    private String dylx;
    private String fsms;
    private String qttd;
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

    public String getEdgl() {
        return edgl;
    }

    public void setEdgl(String edgl) {
        this.edgl = edgl;
    }

    public String getPfclx() {
        return pfclx;
    }

    public void setPfclx(String pfclx) {
        this.pfclx = pfclx;
    }

    public String getDylx() {
        return dylx;
    }

    public void setDylx(String dylx) {
        this.dylx = dylx;
    }

    public String getFsms() {
        return fsms;
    }

    public void setFsms(String fsms) {
        this.fsms = fsms;
    }

    public String getQttd() {
        return qttd;
    }

    public void setQttd(String qttd) {
        this.qttd = qttd;
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
