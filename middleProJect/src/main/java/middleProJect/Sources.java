package middleProJect;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class Sources {

	public void main(){
		// Jsoup�� �̿��ؼ� http://www.cgv.co.kr/movies/ ũ�Ѹ�
		String url = "https://www.syu.ac.kr/academic/major-schedule/"; //ũ�Ѹ��� url����
		Document doc = null;        //Document���� �������� ��ü �ҽ��� ����ȴ�

		try {
			doc = Jsoup.connect(url).get();
		} catch (IOException e) {
			e.printStackTrace();
		}
		//select�� �̿��Ͽ� ���ϴ� �±׸� �����Ѵ�. select�� ���ϴ� ���� �������� ���� �߿��� ����̴�.
		Elements element = doc.select("#post-121 > div > div.md_gray_textcalendar.mb60 > dl > dd > div");    

		//Iterator�� ����Ͽ� �ϳ��� �� ��������
		Iterator<Element> ie1 = element.select("ul > li > dl > dt").iterator();
		Iterator<Element> ie2 = element.select("ul > li > dl > dd").iterator();
		        
		while (ie1.hasNext()) {
			System.out.println(ie1.next().text()+"\t"+ie2.next().text());
		}
		
	}
}

