package member.data;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO extends SqlSessionDaoSupport implements MemberDaoInter {




	@Override
	public List<MemberDTO> getAllDatas() {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("selectAllDataOfMember");
	}

	

	@Override
	public void insertmember(MemberDTO dto) {
		// TODO Auto-generated method stub
		getSqlSession().insert("insertOfMember", dto);
	}

	@Override
	public MemberDTO getdata(String num) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("selectOfOenMember", num);
		
	}

	@Override
	public void updatemember(MemberDTO dto) {
		// TODO Auto-generated method stub
		getSqlSession().update("updateOfMemver", dto);
	}

	@Override
	public void deletemember(String num) {
		// TODO Auto-generated method stub
		getSqlSession().delete("deleteOfmember", num);
	}

	@Override
	public boolean isLogin(String id, String pass) {
		// TODO Auto-generated method stub
		
		HashMap<String, String>map= new HashMap<String, String>();
	
		map.put("id", id);
		map.put("pass", pass);
		
		int n=getSqlSession().selectOne("loginSuccess", map);
		return n==1?true:false;
	}

	@Override
	public String getName(String id) {
		// TODO Auto-generated method stub
		String name=getSqlSession().selectOne("nameByMember", id);
		
		return name;
	}

}