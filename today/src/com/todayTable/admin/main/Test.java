package com.todayTable.admin.main;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class Test {

	public static void main(String[] args) {
		try {
			Document doc = Jsoup.connect("http://localhost:8002/today/").get();
			Elements e = doc.select(".bg-img");
			
			String style = "";
			
			System.out.println(e);
			for(Element ee : e) {
				style += ee.attr("style");
//				System.out.println(ee.attr("style"));
				
			}
//			System.out.println(style.split(";"));
			String[] arraystr = style.split(";");
			for(int i=0;i<arraystr.length;i++) {
				
//				System.out.println(arraystr[i]);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
