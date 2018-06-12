package com.wine.utils;

import java.text.DecimalFormat;

public class WorkloadKit {


	/**
	 * 
	 * @param n		实际查询数据量
	 * @param m		分配数据量
	 * @param l		查询次数
	 * @param k     工作量系数，默认为1L
	 * @return	double	工作量
	 */
	public static double countWorkload(int n, int m, int l, double k){
		
		double t = n * 1.0 / m;
		
		if(l > 3 || t < 0.85){
			return 0;
		}
		
		double r = 0;
		
		if(t >= 0.95){
			if(l == 1){
				r = n * k * t;
			} else if (l == 2){
				r = n * k * 0.9;
			} else if (l == 3){
				r = n * k * 0.8;
			}
		} else if(t >= 0.90){
			r = n * k * 0.9 * getN(l);
		} else if(t >= 0.85){
			r = n * k * 0.7 * getN(l);
		} else {
			return 0;
		}
		
		DecimalFormat df = new DecimalFormat("#.0");
		return Double.parseDouble(df.format(r));
	}
	
	
	private static double getN(int n){
		String t = (n - 1) + "." + (n - 1);
		DecimalFormat df = new DecimalFormat("#.00");
		return Double.parseDouble(df.format(n * 1.0 - Double.parseDouble(t)));
	}
	
	
	
	

	
}
