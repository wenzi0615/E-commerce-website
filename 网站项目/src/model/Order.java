package model;

import java.util.Calendar;
import java.util.Date;
import java.util.Random;

public class Order {
	public boolean CreateOrder(vo.Order o){
		//生成编号
		Calendar c = Calendar.getInstance();
		System.out.println(c.toString());
		String number = new String();
		number += c.get(Calendar.YEAR);
		number += c.get(Calendar.MONTH);
		number += c.get(Calendar.DAY_OF_MONTH);
		number += c.get(Calendar.HOUR_OF_DAY);
		number += c.get(Calendar.MINUTE);
		number += c.get(Calendar.SECOND);
		number += (int)(Math.random()*100);
		o.setNumber(number);
		return new daoimpl.OrderDaoImpl().CreateOrder(o);
		//return true;
	}
}
