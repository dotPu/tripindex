package collection;

import java.util.HashMap;
import java.util.Map;

public class MapMain {

	public static void main(String[] args) {
		Map<String, String> map=new HashMap<>();
		map.put("naver.com","192.168.0.1");
		System.out.println(map.get("naver.com"));
	}

}
