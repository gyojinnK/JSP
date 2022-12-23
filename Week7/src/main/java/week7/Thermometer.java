package week7;
import java.util.*;
public class Thermometer {
	private Map<String, Double> locationMap = new HashMap<>();
	//Map은 대응관계를 쉽게 표현할 수 있는 자료형 == hash라고도 부른다.
	//key와 value를 한 쌍으로 갖는 자료형
	
	public void setCelsius(String location, Double value) {
		locationMap.put(location, value);
	}
	public Double getCelsius(String location) {
		return locationMap.get(location);
	}
	public Double getFahrenheit(String location) {
		Double celsius = getCelsius(location);
		if(celsius == null) 
			return null;
		
		return celsius.doubleValue() * 1.8 + 32.0;
	}
	public String getInfo() {
		return "온도계 변환기 1.1";
	}
}
