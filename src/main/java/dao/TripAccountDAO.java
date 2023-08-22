package dao;

import java.util.List;

public interface TripAccountDAO {
	public int insert(TripAccountVO vo);
	public List<TripAccountVO> findAll();
	public TripAccountVO findOneById(String id);
	public TripAccountVO login(String id,String password);
	public int update(TripAccountVO vo);
	public int delete(String id);
	public String findId(String emailValue);
	public String findPw(String id);
}
