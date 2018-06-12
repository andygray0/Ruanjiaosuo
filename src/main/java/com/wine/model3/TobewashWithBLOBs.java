package com.wine.model3;

import java.io.Serializable;

public class TobewashWithBLOBs extends Tobewash implements Serializable {
    private byte[] irContent;
    private String irContentStr;

    private byte[] irUrlcontent;
    private String irUrlcontentStr;

    private byte[] irUrlbody;
    private String irUrlbodyStr;

    private static final long serialVersionUID = 1L;

    public byte[] getIrContent() {
        return irContent;
    }

    public void setIrContent(byte[] irContent) {
        this.irContent = irContent;
    }

    public byte[] getIrUrlcontent() {
        return irUrlcontent;
    }

    public void setIrUrlcontent(byte[] irUrlcontent) {
        this.irUrlcontent = irUrlcontent;
    }

    public byte[] getIrUrlbody() {
        return irUrlbody;
    }

    public void setIrUrlbody(byte[] irUrlbody) {
        this.irUrlbody = irUrlbody;
    }

    public String getIrContentStr() {
        return irContentStr;
    }

    public void setIrContentStr(String irContentStr) {
        this.irContentStr = irContentStr;
    }

    public String getIrUrlcontentStr() {
        return irUrlcontentStr;
    }

    public void setIrUrlcontentStr(String irUrlcontentStr) {
        this.irUrlcontentStr = irUrlcontentStr;
    }

    public String getIrUrlbodyStr() {
        return irUrlbodyStr;
    }

    public void setIrUrlbodyStr(String irUrlbodyStr) {
        this.irUrlbodyStr = irUrlbodyStr;
    }
}