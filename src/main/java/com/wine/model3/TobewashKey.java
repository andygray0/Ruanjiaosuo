package com.wine.model3;

import java.io.Serializable;

public class TobewashKey implements Serializable {
    private String irHkey;

    private Integer irBbsnum;

    private static final long serialVersionUID = 1L;

    public String getIrHkey() {
        return irHkey;
    }

    public void setIrHkey(String irHkey) {
        this.irHkey = irHkey == null ? null : irHkey.trim();
    }

    public Integer getIrBbsnum() {
        return irBbsnum;
    }

    public void setIrBbsnum(Integer irBbsnum) {
        this.irBbsnum = irBbsnum;
    }
}