package com.project.community.user;

import java.io.File;

import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.project.community.Const;
import com.project.community.domain.UserDTO;
import com.project.community.domain.UserVO;
import com.project.community.utils.FileUtils;
import com.project.community.utils.SecurityUtils;

@Service
public class UserService {
	
	@Autowired
	private UserMapper mapper;
	
	@Autowired
	private SecurityUtils sUtils;
	
	@Autowired 
	private HttpSession hs;
	
	@Autowired
	private FileUtils fUtils;
	
	//
	public int login(UserDTO dto) {
		
		UserVO dbData = mapper.selUser(dto);
		if(dbData == null) {
			System.out.println("아이디가 없습니다");
			return 2;
		}
		
		if(!BCrypt.checkpw(dto.getU_pw(),dbData.getU_pw())) {
			return 3;
		}
		
		hs.setAttribute(Const.KEY_LOGINUSER, dbData);
		return 1;
	}

	
	public int join(UserDTO vo , MultipartFile mf) {
		
		String salt = sUtils.getSalt();
		String hashPw = sUtils.getHashPw(vo.getU_pw(), salt);
		
		vo.setU_pw(hashPw);
		
		if(mf==null) {
			vo.setU_profileImg(null);
			int result = mapper.join(vo);
			return result;
		} else {
			//profileImg DB에 저장하기 위해 하는부분
			String profileImg = fUtils.getRandomFileNm(mf.getOriginalFilename());
			vo.setU_profileImg(profileImg);
			
			System.out.println("profileImg :"+profileImg);
			
			int result = mapper.join(vo);
			
			
			UserVO param = mapper.selUser(vo);
			System.out.println("파일 업로드용 pk"+param.getU_pk());
			
			int u_pk = param.getU_pk(); 
			
			try {
				String folder = "/res/img/user/" + u_pk;
				String basePath = fUtils.getBasePath(folder);
				fUtils.makeFolders(basePath);
				File file = new File(basePath, profileImg);
				mf.transferTo(file);
			} catch (Exception e) {
				e.printStackTrace();
			}			
			return result;
		}
	}
}
