package com.spx.entity;

/*
显卡
七彩虹iGame1050Ti 烈焰战神U-4GD5
¥1199
芯片厂商：NVIDIA
显卡芯片：GeForce GTX 1050
显存容量：4GB GDDR5
显存位宽：128bit I/O
接口：1×HDMI接口，1×DVI接口，1×DisplayPort接口
更多参数>>
 */
public class Xk {

    private int id;
    private String name;
    private int price;
    private String xpcs;
    private String xkxp;
    private String xcrl;
    private String xcwk;
    private String jk;
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

    public String getXpcs() {
        return xpcs;
    }

    public void setXpcs(String xpcs) {
        this.xpcs = xpcs;
    }

    public String getXkxp() {
        return xkxp;
    }

    public void setXkxp(String xkxp) {
        this.xkxp = xkxp;
    }

    public String getXcrl() {
        return xcrl;
    }

    public void setXcrl(String xcrl) {
        this.xcrl = xcrl;
    }

    public String getXcwk() {
        return xcwk;
    }

    public void setXcwk(String xcwk) {
        this.xcwk = xcwk;
    }

    public String getJk() {
        return jk;
    }

    public void setJk(String jk) {
        this.jk = jk;
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
