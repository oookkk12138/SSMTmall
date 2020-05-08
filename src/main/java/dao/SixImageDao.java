package dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface SixImageDao {
	//增加一个sixImage
	public void addSixImageForAdmin(@Param("imageUri") String imageUri,@Param("productId") Integer productId);
	//根据id删除sixImage
	public void deleteSixImageByIdForAdmin(int id);
}
