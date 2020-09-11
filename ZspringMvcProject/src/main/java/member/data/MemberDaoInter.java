package member.data;

import java.util.List;

import member.data.MemberDTO;

public interface MemberDaoInter {

	public List<MemberDTO> getAllDatas();
	
	public void insertmember (MemberDTO dto);
	
	public MemberDTO getdata (String num);
	
	public void updatemember (MemberDTO dto);
	
	public void deletemember (String num);
	
	
	
	////////////////////////////////
	
	
	//아이디 비번체크
	public boolean isLogin(String id, String pass);
	
	
	
	//네임얻기
	public String getName(String id);
	
	
	
	
	
	
}


