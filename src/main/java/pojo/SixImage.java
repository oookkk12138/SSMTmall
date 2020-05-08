package pojo;

public class SixImage {
	private Integer id;
	private String imageUri;
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("SixImage [id=");
		builder.append(id);
		builder.append(", imageUri=");
		builder.append(imageUri);
		builder.append("]");
		return builder.toString();
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getImageUri() {
		return imageUri;
	}
	public void setImageUri(String imageUri) {
		this.imageUri = imageUri;
	}
}
