package com.action.user;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.*;
import com.user.model.UserDAO;
import com.user.model.UserDTO;

public class UserJoinOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String user_id = request.getParameter("id").trim();
		String user_pwd = request.getParameter("pwd").trim();
		String user_name = request.getParameter("name").trim();
		String user_phone = request.getParameter("phone").trim();
		String user_birth = request.getParameter("birth").trim();
		String user_email = request.getParameter("email").trim();
		String user_region = request.getParameter("location").trim();
		
		UserDTO dto = new UserDTO();
		
		dto.setUser_id(user_id);
		dto.setUser_pwd(user_pwd);
		dto.setUser_name(user_name);
		dto.setUser_phone(user_phone);
		dto.setUser_birth(user_birth);
		dto.setUser_email(user_email);
		dto.setUser_egion(user_region);
		
		UserDAO dao = UserDAO.getInstance();
		
		int check = dao.insertUser(dto);
		
		ActionForward forwd = new ActionForward();
		
		if(check > 0) {
			forwd.setRedirect(true);
			forwd.setPath("user_list.do");
		} else {
			forwd.setRedirect(false);
			forwd.setPath("user/user_join_normal.jsp");
		}
		return forwd;
	}

}
