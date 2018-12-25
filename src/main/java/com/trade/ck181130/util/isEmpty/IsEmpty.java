package com.trade.ck181130.util.isEmpty;

import java.util.HashMap;
import java.util.List;

public class IsEmpty {
	public static boolean isempty(String a) {
		if(a==null||a.trim().length()==0) {
			return true;
		}
		return false;
	}
	public static boolean isEmpty(List<?> a) {
		if(a==null||a.size()==0) {
			return true;
		}
		return false;
	}
	public static boolean forEmpty(HashMap<?,?> a) {
		if(a==null||a.size()==0) {
			return true;
		}
		return false;
	}
}
