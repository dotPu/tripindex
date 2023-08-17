package collection;

import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.Vector;

public class SetMain {

	public static void main(String[] args) {
		// HashSet : 각 요소는 중복불가, 순서유지가 되지 않음.
		// linkedhasSet : 각 요소 중복 불가, 순서가 유지됨.
		// TreeHashSet : 각 요소 중복 불가, 순서 유지되지 않음, 오름차순 정렬
		// Map : Key+value의 한 쌍,put 메서드로 입력, 중복불가
		//HashSet<Integer> set = new HashSet<Integer>();
		Set<String> set = new HashSet<>(); 
//		Iterator<Integer> it = set.iterator();
//		while(it.hasNext()) {
//			System.out.println(it.next());
//		}
		
		for(int i=97;i<97+26;i++) {
			set.add(String.valueOf(i));
		}
		System.out.println(set);
		
		Set<String> lset = new LinkedHashSet<>();
		for(int i=97;i<97+26;i++) {
			lset.add(String.valueOf(i));
		}
		System.out.println(lset);
		
		Vector<String> vector = new Vector<>();
		vector.add("java");
		vector.add("html");
		vector.add("javascript");
		System.out.println(vector);
		
	}

}
