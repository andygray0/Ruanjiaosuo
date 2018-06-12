package com.wine.utils;

public class StrKit {

	public static String uppercaseFirstLetter(String str) {
		if(null != str && !str.trim().equals("")) {
			String result = (str.charAt(0) + "").toUpperCase();
			if(str.length() > 1) {
				result += str.substring(1);
			}
			return result;
		} else {
			return str;
		}
	}
	
	public static String toCamelName(String str) {
		
		if(null == str || "".equals(str.trim()) || str.indexOf("_") < 0) {
			return str;
		} else {
			String[] split = str.split("_");
			if(null == split || split.length == 0) {
				return str.replaceAll("_", "");
			} else {
				String result = split[0];
				for(int i = 1; i < split.length; i++) {
					result += uppercaseFirstLetter(split[i]);
				}
				return result;
			}
			
		}
		
	}
	
	
	
	  /** 
     * 转换为下划线 
     *  
     * @param camelCaseName 
     * @return 
     */  
    public static String camelToUnderline(String camelCaseName) {  
        StringBuilder result = new StringBuilder();  
        if (camelCaseName != null && camelCaseName.length() > 0) {  
            result.append(camelCaseName.substring(0, 1).toUpperCase());  
            for (int i = 1; i < camelCaseName.length(); i++) {  
                char ch = camelCaseName.charAt(i);  
                if (Character.isUpperCase(ch)) {  
                    result.append("_");  
                    result.append(Character.toUpperCase(ch));  
                } else {  
                    result.append(Character.toUpperCase(ch));  
                }  
            }  
        }  
        return result.toString();  
    } 

	
}
