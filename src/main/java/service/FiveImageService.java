package service;

public interface FiveImageService {
	//增加一个fiveImage
	public void addFiveImageForAdmin(String littleImageUri,String bigImageUri,Integer productId);
	//根据id删除fiveImage
	public void deleteFiveImageByIdForAdmin(int id);
}
