package com.wine;

import java.awt.image.BufferedImage;
import java.util.Map;

public interface IDrawWindRoseChart {
	
	/**画风向玫瑰图或风能玫瑰图，
	 * @param gWidth : BufferedImage的宽度值，因为是画圆，所以只传入一个值，高度值gHeight也使用gWidth
	 * @param map : 各扇区的数据集
	 * @param chartTypeEnum : 所画玫瑰图的类型
	 * @return  
	 */	
	public BufferedImage drawMonthWindRose( int gWidth,
			Map<Integer, Map<Integer, Double>> map , RoseChartTypeEnum chartTypeEnum ) throws Exception;
	public BufferedImage drawYearWindRose( int gWidth,
			Map<Integer, Double> map ,RoseChartTypeEnum chartTypeEnum) throws Exception;
}
