package com.wine;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.Charset;

public class Test {
	public static void main(String[] args) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Process pro = Runtime.getRuntime().exec("cmd /c d: &&java -jar clean.jar example"); //添加要进行的命令，"cmd  /c calc"中calc代表要执行打开计算器，如何设置关机请自己查找cmd命令
			BufferedReader br = new BufferedReader(new InputStreamReader(pro.getInputStream(), Charset.forName("GBK"))); //虽然cmd命令可以直接输出，但是通过IO流技术可以保证对数据进行一个缓冲。
			String msg = null;
			while ((msg = br.readLine()) != null) {
				System.out.println(msg);
			}
		} catch (IOException exception) {
		}
	}
}
   

//
