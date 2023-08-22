package dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mapper.TripAccountMapper;

@Repository
public class TripAccountMapperDAO implements TripAccountDAO{

	@Autowired
	TripAccountMapper mapper;
	
	@Override
	public int insert(TripAccountVO vo) {
		
		return mapper.insert(vo);
	}

	@Override
	public List<TripAccountVO> findAll() {
		
		return mapper.findAll();
	}

	@Override
	public TripAccountVO findOneById(String id) {
		// TODO Auto-generated method stub
		return mapper.findOneById(id);
	}

	@Override
	public TripAccountVO login(String id, String password) {
		// TODO Auto-generated method stub
		return mapper.login(id, password);
	}

	@Override
	public int update(TripAccountVO vo) {
		// TODO Auto-generated method stub
		return mapper.update(vo);
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return mapper.delete(id);
	}

	@Override
	public String findId(String emailValue) {
		
		return mapper.findId(emailValue);
	}

	@Override
	public String findPw(String id) {
		// TODO Auto-generated method stub
		return null;
	}

}
