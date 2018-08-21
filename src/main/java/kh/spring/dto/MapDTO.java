package kh.spring.dto;

public class MapDTO {
	private double swLat;
	private double neLat;
	private double swLng;
	private double neLng;
	
	public MapDTO() {
		super();
	}
	
	public MapDTO(double swLat, double neLat, double swLng, double neLng) {
		super();
		this.swLat = swLat;
		this.neLat = neLat;
		this.swLng = swLng;
		this.neLng = neLng;
	}

	public double getSwLat() {
		return swLat;
	}

	public void setSwLat(double swLat) {
		this.swLat = swLat;
	}

	public double getNeLat() {
		return neLat;
	}

	public void setNeLat(double neLat) {
		this.neLat = neLat;
	}

	public double getSwLng() {
		return swLng;
	}

	public void setSwLng(double swLng) {
		this.swLng = swLng;
	}

	public double getNeLng() {
		return neLng;
	}

	public void setNeLng(double neLng) {
		this.neLng = neLng;
	}
	
	
	
	
}
