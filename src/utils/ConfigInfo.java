package utils;

import java.util.Properties;
import java.util.ResourceBundle;
/**
 * ��ȡ�����ļ�
 *
 */
public class ConfigInfo {
	
	private static ResourceBundle cache = null;
	
	static{
		try {
			cache=ResourceBundle.getBundle("merchantInfo");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/**
	 * ��ȡָ��key��ֵ
	 */
	public static String getValue(String key){
		String str =  cache.getString(key);
		return str;
	}
}
