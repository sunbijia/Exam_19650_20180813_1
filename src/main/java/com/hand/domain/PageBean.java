package com.hand.domain;

import java.util.List;

/**
 * @author bijia.sun@hand-china.com
 * @date 2018/8/13 16:28
 */
public class PageBean<T> {
    private int cp;//当前页

    private int pc;//可以通过每页记录数和共多少条记录得到 （dt%md ==0 ）？dt/md ： dt/md+1 一共多少页

    private int md;//每页记录数

    private List<T> pd;//页中的记录数据 

    private int dt;//一共多少条记录

    private int cd;//可以通过每页记录是*(当前页数-1) + 1得到，当前页第一条记录的行数

    private String url;

    public int getCp() {
        return cp;
    }

    public void setCp(int cp) {
        this.cp = cp;
    }

    public int getPc() {
        return pc;
    }

    public void setPc(int pc) {
        this.pc = pc;
    }

    public int getMd() {
        return md;
    }

    public void setMd(int md) {
        this.md = md;
    }

    public List<T> getPd() {
        return pd;
    }

    public void setPd(List<T> pd) {
        this.pd = pd;
    }

    public int getDt() {
        return dt;
    }

    public void setDt(int dt) {
        this.dt = dt;
    }

    public int getCd() {
        return cd;
    }

    public void setCd(int cd) {
        this.cd = cd;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}

