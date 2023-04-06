package com.action.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.action.Action;
import com.action.ActionForward;
import com.model.user.UserDAO;
import com.model.user.UserDTO;

public class UserPwdChangeAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {

		int user_no = Integer.parseInt(request.getParameter("user_no"));
		String nowPwd = request.getParameter("now_pwd");
		String newPwd = request.getParameter("re_new_pwd");
		
		UserDAO dao = UserDAO.getInstance();
		int res = dao.changeUserPwd(user_no, nowPwd, newPwd);
		
		UserDTO dto = dao.getUserContent(user_no);
		dto.setUser_no(user_no);
		
		HttpSession session = request.getSession();
		session.setAttribute("loginUser", dto);
		
		PrintWriter out = response.getWriter();
		
		if(res > 0) {
			out.println("<script>");
			out.println("alert('비밀번호가 변경되었습니다.')");
			out.println("location.href='user_modify.do'");
			out.println("</script>");
		} else if(res == -1) {
			out.println("<script>");
			out.println("alert('현재 비밀번호가 일치하지 않습니다.')");
			out.println("history.back()");
			out.println("</script>");
		} else {
			out.println("<script>");
			out.println("alert('비밀번호 변경에 실패하였습니다.')");
			out.println("history.back()");
			out.println("</script>");
		}
		
		return null;
	}

}
