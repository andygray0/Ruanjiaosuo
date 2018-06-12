package com.wine.test;

/**
 * Created by Mr.Kong
 * Date: 2017-01-18.
 */
public class StrTest {




    public static void main(String[] args) {
//        String a=
//                "<img src=\"http://localhost:9999/upload/e34d83aa-c9de-4b7a-b20a-780f56648de5/img_001.jpg\" alt=\"\" />"
//                         ;
//
//
//        String list [] = a.split("img s");
//        for (String s:list) {
//            System.out.println(s);
//
//        }
//        String c=list[1];
//        String b= c.substring(c.indexOf("src=")+5,c.indexOf("alt")-2);
//        System.out.println(b);
//
//    }

        String s ="<p class=\"p0\">\n" +
                "\t活动名称：万方开学季之夺宝奇兵\n" +
                "</p>\n" +
                "<p class=\"p0\">\n" +
                "\t<br />\n" +
                "</p>\n" +
                "<p class=\"p0\">\n" +
                "\t活动时间：2014年9月19日——2014年10月10日\n" +
                "</p>\n" +
                "<p class=\"p0\">\n" +
                "\t<a class=\"ke-insertfile\" href=\"/upload/acd75114-1c9a-4eb0-816d-909da846a3b5/万方开学季之夺宝奇兵.docx\" target=\"_blank\">万方开学季之夺宝奇兵.docx</a> \n" +
                "</p>";
       int c= s.indexOf("<p cl",s.indexOf("ke-insertfile")-30);
       String headStr=s.substring(0,c);
       String endStr =s.substring(c);
//        System.out.println(headStr);
//        System.out.println("----");
//        System.out.println(endStr);
        StringBuilder stringBuilder= new StringBuilder(headStr+" </br><b>附件内容如下：</b> </br>");
        stringBuilder.append(endStr);
        System.out.println(111111);
        System.out.println(stringBuilder.toString());


//        String ss="/upload/80ca71ee-16c8-42e8-bbf4-6afe209934aA/kindeditor-master.zip";
//        System.out.println(ss.indexOf("A")+2);
//        System.out.println(ss.substring(ss.indexOf("A")+2));
    }


}
