package com.wine.utils;

/**
 * Title:
 * Description:
 * Copyright: Company: www.liyunet.com
 *
 * @author lishujiang
 * @version 1.0
 */

import java.net.URLEncoder;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import sun.misc.BASE64Decoder;

public class Format {

	private static final String cvt = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
			+ "abcdefghijklmnopqrstuvwxyz" + "0123456789#@$";
	private static final int fillchar = '*';

	public static String getDate() {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		Date Now = new Date();
		String NDate = formatter.format(Now);
		return NDate;
	}

	public static String getDateTime() {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date Now = new Date();
		String NDate = formatter.format(Now);
		return NDate;
	}

	public static String getStrDate(String DateString) {
		String ret = "";
		if (DateString != null && DateString.length() > 10) {
			ret = DateString.substring(0, 10);
		}
		return ret;
	}
	
	 public static String getDateTimeNumber() {
	    SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
	    Date Now = new Date();
	    String NDate = formatter.format(Now);
	    return NDate;
	  }
	
	 public static String getChineseDate() {
	    SimpleDateFormat formatter = new SimpleDateFormat("yyyy年MM月dd日 ");
	    Calendar cal = Calendar.getInstance();
	    String nDate = formatter.format(cal.getTime());
	    int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
	    switch (dayOfWeek) {
	      case 1: 
	        nDate += "星期日";
	        break;
	      case 2: 
          nDate += "星期一";
          break;
	      case 3: 
          nDate += "星期二";
          break;
	      case 4: 
          nDate += "星期三";
          break;
	      case 5: 
          nDate += "星期四";
          break;
	      case 6: 
          nDate += "星期五";
          break;
	      case 7: 
          nDate += "星期六";
          break;
	    }
	    return nDate;
	  }

	public static String htmEncode(String s) {
		StringBuffer stringbuffer = new StringBuffer();
		int j = s.length();
		for (int i = 0; i < j; i++) {
			char c = s.charAt(i);
			switch (c) {
			case 60:
				stringbuffer.append("&lt;");
				break;
			case 62:
				stringbuffer.append("&gt;");
				break;
			case 38:
				stringbuffer.append("&amp;");
				break;
			case 34:
				stringbuffer.append("&quot;");
				break;
			case 169:
				stringbuffer.append("&copy;");
				break;
			case 174:
				stringbuffer.append("&reg;");
				break;
			case 165:
				stringbuffer.append("&yen;");
				break;
			case 8364:
				stringbuffer.append("&euro;");
				break;
			case 8482:
				stringbuffer.append("&#153;");
				break;
			case 13:
				if (i < j - 1 && s.charAt(i + 1) == 10) {
					stringbuffer.append("<br>");
					i++;
				}
				break;
			case 32:
				if (i < j - 1 && s.charAt(i + 1) == ' ') {
					stringbuffer.append(" &nbsp;");
					i++;
					break;
				}
			default:
				stringbuffer.append(c);
				break;
			}
		}
		return new String(stringbuffer.toString());
	}

	public static String getDateByStr(String DateString) {
		String ret = "";
		if (DateString != null && DateString.length() > 10) {
			ret = DateString.substring(6, 10);
		}
		return ret;
	}

	public static boolean compareTo(String last, String now) {
		try {
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date temp1 = formatter.parse(last);
			Date temp2 = formatter.parse(now);

			if (temp1.after(temp2))
				return false;
			else if (temp1.before(temp2))
				return true;
		} catch (ParseException e) {
			System.out.print(e.getMessage());
		}
		return false;
	}

	public static long getDays(String begin, String end) {
		try {
			SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
			Date temp1 = f.parse(begin);
			Date temp2 = f.parse(end);
			return (temp2.getTime() - temp1.getTime()) / (24 * 60 * 60 * 1000);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return 0;
	}

	/**
	 * 字符串替换，将 source 中的 oldString 全部换成 newString
	 * 
	 * @param source
	 *          源字符串
	 * @param oldString
	 *          老的字符串

	 * @param newString
	 *          新的字符串

	 * @return 替换后的字符串

	 */
	public static String Replace(String source, String oldString, String newString) {
		StringBuffer output = new StringBuffer();

		int lengthOfSource = source.length(); // 源字符串长度
		int lengthOfOld = oldString.length(); // 老字符串长度

		int posStart = 0; // 开始搜索位置

		int pos; // 搜索到老字符串的位置

		while ((pos = source.indexOf(oldString, posStart)) >= 0) {
			output.append(source.substring(posStart, pos));

			output.append(newString);
			posStart = pos + lengthOfOld;
		}

		if (posStart < lengthOfSource) {
			output.append(source.substring(posStart));
		}

		return output.toString();
	}

	/**
	 * 将字符串格式化成 HTML 代码输出 只转换特殊字符，适合于 HTML 中的表单区域
	 * 
	 * @param str
	 *          要格式化的字符串
	 * @return 格式化后的字符串
	 */
	public static String toHtmlInput(String str) {
		if (str == null)
			return null;

		String html = new String(str);

		html = Replace(html, "&", "&amp;");
		html = Replace(html, "<", "&lt;");
		html = Replace(html, ">", "&gt;");
		return html;
	}

	public static String toTable(String str) {
		if (str == null)
			return null;

		String html = new String(str);
		html = Replace(html, "<p>", "");
		html = Replace(html, "</p>", "");

		return html;
	}

	/**
	 * 将字符串格式化成 HTML 代码输出 除普通特殊字符外，还对空格、制表符和换行进行转换， 以将内容格式化输出， 适合于 HTML 中的显示输出
	 * 
	 * @param str
	 *          要格式化的字符串
	 * @return 格式化后的字符串
	 */
	public static String toHtml(String str) {
		if (str == null)
			return "";

		String html = new String(str);

		html = toHtmlInput(html);
		html = Replace(html, "\r\n", "\n");
		html = Replace(html, "\n", "<br>\n");
		html = Replace(html, "\t", "    ");
		html = Replace(html, "  ", " &nbsp;");

		return html;
	}

	/**
	 * 将普通字符串格式化成数据库认可的字符串格式

	 * 
	 * @param str
	 *          要格式化的字符串
	 * @return 合法的数据库字符串

	 */
	public static String toSql(String str) {
		String sql = new String(str);
		return Replace(sql, "'", "''");
	}

	public static String toString(String str) {
		return (str == null) ? "" : str.trim();
	}
	
	public static String toStringToN(String str) {
		return (str == null || "".equals(str)) ? "N" : str.trim();
	}
	
	public static String toString(Object str) {
		return (str == null) ? "" : String.valueOf(str).trim();
	}

	public static String convertCoding(String str) {
		try {
			return new String(str.getBytes("ISO8859_1"), "GBK");
		} catch (Exception e) {
			return "";
		}
	}

	public static String getReplace(String urls) {
		String url = "";
		if (!"".equals(urls) && urls != null && !"null".equals(urls)
				&& urls.trim().length() > 0) {
			url = urls.replace("\\", "/");
		}
		return url;
	}

	public static String encodeBase64(String x) {
		String s = x;
		s = (new sun.misc.BASE64Encoder()).encode(s.getBytes());
		try {
			s = URLEncoder.encode(s, "123");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return s;
	}

	/**
	 * 对字符串进行base64解码
	 * 
	 * @param s
	 *          待解码码字符串

	 * 
	 * @return
	 */
	public static String decodeBase64(String x) {
		String res = "";
		String s = x;
		BASE64Decoder base64 = new BASE64Decoder();
		try {
			res = new String(base64.decodeBuffer(s));
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		return res;
	}
  
  public static boolean checkIntYycf(String str) {
    return str.matches("[0-9]+");
  }
	
	public static void main(String args[]) {
		//String str1 = "<html><head><title></title></head><body><table></table></body></html>";
//		DecimalFormat df=new DecimalFormat("0.0");
//		Integer a=7, b=2;
//		System.out.println(df.format(a/b));
		//System.out.println(str1.indexOf("<body>"));
		//System.out.println(str1.indexOf("</body>"));
		//System.out.println(str1.substring(str1.indexOf("<body"),str1.indexOf("</body>")));
		String str1 = "北京格致正诚科技有限公司";
    String str2 = "南京紫滕网络科技有限公司";
    System.out.print(str1.compareTo(str2));
	}
}
