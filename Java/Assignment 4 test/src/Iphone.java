
public class Iphone extends Phone {
	public Iphone(int id, String loaiDT, String heDieuHanh, Double giaTien) {
		super(id, loaiDT, heDieuHanh, giaTien);
		// TODO Auto-generated constructor stub
	}
	private String faceId;
	private String cameraType;
	public Iphone(int id, String loaiDT, String heDieuHanh, Double giaTien, String faceId, String cameraType) {
		super(id, loaiDT, heDieuHanh, giaTien);
		this.faceId = faceId;
		this.cameraType = cameraType;
		System.out.println("Khoi tao con");
	}
	public String getFaceId() {
		return faceId;
	}
	public void setFaceId(String faceId) {
		this.faceId = faceId;
	}
	public String getCameraType() {
		return cameraType;
	}
	public void setCameraType(String cameraType) {
		this.cameraType = cameraType;
	}
	
	
	
}
