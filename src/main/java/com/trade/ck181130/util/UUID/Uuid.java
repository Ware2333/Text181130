package com.trade.ck181130.util.UUID;

import java.util.UUID;

public class Uuid {
	public static String getUUID() {
		UUID uuid = UUID.randomUUID();
		String str = uuid.toString();
		return str;
	}
}
