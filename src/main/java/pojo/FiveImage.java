package pojo;

public class FiveImage {
	private Integer id;
	private String littleImageUri;
	private String bigImageUri;
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("FiveImage [id=");
		builder.append(id);
		builder.append(", littleImageUri=");
		builder.append(littleImageUri);
		builder.append(", bigImageUri=");
		builder.append(bigImageUri);
		builder.append("]");
		return builder.toString();
	}
	public String getBigImageUri() {
		return bigImageUri;
	}
	public void setBigImageUri(String bigImageUri) {
		this.bigImageUri = bigImageUri;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getLittleImageUri() {
		return littleImageUri;
	}
	public void setLittleImageUri(String littleImageUri) {
		this.littleImageUri = littleImageUri;
	}
}
