package collection;

import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

public class LinkSetMain {

	public static void main(String[] args) {
		Set<String> set = new LinkedHashSet<>();
		set.add("일");
		set.add("이");
		set.add("삼");
		Iterator<String> it = set.iterator();
		while(it.hasNext()) {
			System.out.println(it.next());
		}
	}

}
