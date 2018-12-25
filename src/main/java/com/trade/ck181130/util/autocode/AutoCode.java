package com.trade.ck181130.util.autocode;

public class AutoCode {
	public static String auto(StringBuffer code) {
		int a[] = new int[9];
		StringBuffer num = new StringBuffer("1");
		for (int i = 0; i < a.length; i++) {
			a[i] = (int) (10 * (Math.random()));
			code.append(a[i]);
		}
		code = num.append(code);
		return code.toString();
	}
}
