package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.SixImageDao;

@Service
public class SixImageServiceImpl implements SixImageService{

	@Autowired
	SixImageDao sixImageDao;
	
	//增加一个sixImage
	public void addSixImageForAdmin(String imageUri, Integer productId) {
		sixImageDao.addSixImageForAdmin(imageUri,productId);
	}

	//根据id删除sixImage
	public void deleteSixImageByIdForAdmin(int id) {
		sixImageDao.deleteSixImageByIdForAdmin(id);
	}

}
