package com.wine.utils;

import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.apache.poi.xwpf.usermodel.XWPFParagraph;

import java.io.FileInputStream;
import java.io.InputStream;
import java.util.List;

/**
 * Created by acer on 2018/2/27.
 */
public class Word2010Kit {

    public static void main(String[] args) throws Exception {

        InputStream is = new FileInputStream("G:\\zzzz\\test2010.docx");
        XWPFDocument doc = new XWPFDocument(is);
        List<XWPFParagraph> list = doc.getParagraphs();
        System.out.println(is);
        is.close();

    }



}
