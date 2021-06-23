package TestCode;

public enum TuyenHSGioi {
	TOAN("toan"), LY("ly"), HOA("hoa");

	String tuyenHSGioi;
	
	TuyenHSGioi(String string) {
		this.tuyenHSGioi = tuyenHSGioi;
	}
	
	public static TuyenHSGioi fromValue(String tuyenHSGioi) {
		for (TuyenHSGioi category : values()) {
			if (category.tuyenHSGioi.equalsIgnoreCase(tuyenHSGioi)) {
				return category;
			}
		}
		throw new IllegalArgumentException("Không phải loại ENUM");
	}
}
