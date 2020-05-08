package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.FiveImageDao;

@Service
public class FiveImageServiceImpl implements FiveImageService{
	
	@Autowired
	FiveImageDao fiveImageDao;

	//增加一个FiveImage
	public void addFiveImageForAdmin(String littleImageUri, String bigImageUri, Integer productId) {
		fiveImageDao.addFiveImageForAdmin(littleImageUri,bigImageUri,productId);
	}

	//根据id删除fiveImage
	public void deleteFiveImageByIdForAdmin(int id) {
		fiveImageDao.deleteFiveImageByIdForAdmin(id);
	}

}
