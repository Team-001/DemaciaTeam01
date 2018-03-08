package com.demacia.domain;

/**
 * Created by dllo on 18/3/7.
 */
public class Satellite {
    private int sid;
    private String sname,manager, createDate,effect;

    @Override
    public String toString() {
        return "Satellite{" +
                "sid=" + sid +
                ", sname='" + sname + '\'' +
                ", manager='" + manager + '\'' +
                ", createDate='" + createDate + '\'' +
                ", effect='" + effect + '\'' +
                '}';
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getManager() {
        return manager;
    }

    public void setManager(String manager) {
        this.manager = manager;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public String getEffect() {
        return effect;
    }

    public void setEffect(String effect) {
        this.effect = effect;
    }

    public Satellite() {

    }

    public Satellite(String sname, String manager, String createDate, String effect) {

        this.sname = sname;
        this.manager = manager;
        this.createDate = createDate;
        this.effect = effect;
    }
}
