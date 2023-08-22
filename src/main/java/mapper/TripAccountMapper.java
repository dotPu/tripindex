package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import dao.TripAccountVO;


public interface TripAccountMapper {
	public int insert(@Param("ta") TripAccountVO vo);
	public List<TripAccountVO> findAll();
	public TripAccountVO findOneById(@Param("id")String id);
	public TripAccountVO login(@Param("id")String id, @Param("password")String password);
	public int update(@Param("vo")TripAccountVO vo);
	public int delete(String id);
	public String findId(@Param("email")String email);
	public String findPw(@Param("id")String id);
}
