package com.xkit.easybuy.convert;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.springframework.core.convert.converter.Converter;

public class MyConvert implements Converter<String,Date>{

	public Date convert(String param) {
		SimpleDateFormat d = new SimpleDateFormat("yyyy-MM-dd");
		Date dd=null;
		try {
			dd = d.parse(param);
		} catch (ParseException e) {			
			e.printStackTrace();
		}
		
		return dd;
	}
       
}
