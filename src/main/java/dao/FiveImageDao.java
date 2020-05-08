package dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface FiveImageDao {
	//增加一个fiveImage
	public void addFiveImageForAdmin(@Param("littleImageUri") String littleImageUri,@Param("bigImageUri") String bigImageUri,@Param("productId") Integer productId);
	//根据id删除fiveImage
	public void deleteFiveImageByIdForAdmin(int id);
}
