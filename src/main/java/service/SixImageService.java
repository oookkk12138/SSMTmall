package service;

public interface SixImageService {
	//增加一个sixImage
	public void addSixImageForAdmin(String imageUri,Integer productId);
	//根据id删除一个sixImage
	public void deleteSixImageByIdForAdmin(int id);
}
