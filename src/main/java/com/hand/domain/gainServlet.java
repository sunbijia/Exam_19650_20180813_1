package com.hand.domain;

/**
 * @author bijia.sun@hand-china.com
 * @date 2018/8/13 14:43
 */
public class gainServlet {
    private int fid;
    private String title;
    private String description;
    private String language;

    public int getFid() {
        return fid;
    }

    public void setFid(int fid) {
        this.fid = fid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }
}
