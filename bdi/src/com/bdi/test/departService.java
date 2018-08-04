package com.bdi.test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class departService {
	private static UserService aa;
	private List<Map<String,String>> userList;
	public static UserService getAA() {
		if(aa==null) {
			aa = new UserService();
		}
		return aa;
	}
	public List<Map<String,String>> getUserList(){
		if(userList==null) {
			userList = new ArrayList<Map<String,String>>();
		
			for(int i=1;i<=10;i++) {
				Map<String,String> user = new HashMap<String,String>();
				int Num =(int)(Math.random()*50);
				user.put("departname","ddd"+i);
				user.put("departCode","edf"+i);
				user.put("departCnt","dfd"+Num);
				user.put("departEtc","er"+i);
				userList.add(user);
			}
		}
		return userList;
	}
	public List<Map<String,String>>getUserList(String search){
		if(userList==null) {
			getUserList();
		}
		if(search==null) {
			return getUserList();
			}
		List<Map<String,String>> userList = new ArrayList<Map<String,String>>();
		for(Map<String,String> user : this.userList) {
			if(user.get("departname").indexOf(search)!=-1) {
				userList.add(user);
			}
		}
		return userList;
}
}