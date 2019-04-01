<%@page import="java.util.List"%>
<%@page import="com.javaex.vo.GuestBookVo"%>
<%@page import="com.javaex.dao.GuestBookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	GuestBookDao dao = new GuestBookDao();
	
	int no = Integer.parseInt(request.getParameter("no"));
	String password = request.getParameter("password");
	
	List<GuestBookVo> list = dao.getList();
	for(GuestBookVo vo : list){
		if(no == vo.getNo())
			if(password.equals(vo.getPassword()))
				dao.delete(vo);
	}
	
	response.sendRedirect("http://localhost:8088/guestbook1/addList.jsp");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>