<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/jquery.js"></script>

</head>
<body>
	<h4>学生详情</h4>
		学生编号<a>${student.id }</a><br/>
		学生姓名<a>${student.sname }</a><br/>
		入学日期<a><fmt:formatDate value="${student.birthday}" pattern="yyyy-MM-dd HH:mm:ss"/></a><br/>
		学生性别<a>${student.gender }</a><br/>
		联系方式<a>${student.telephone }</a><br/>
		学生邮箱<a>${student.email }</a><br/>
		班级信息<a>${student.cname }</a><br/>
		<input type="button" value="返回" class="fanhui">
		<script type="text/javascript">
			$(".fanhui").click(function () {
				$("body").html("");
				$("body").load("${pageContext.request.contextPath }/Student/StudentList");
			});
		</script>
</body>
</html>