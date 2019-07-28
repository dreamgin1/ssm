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
<form action="javascript:;" method="post" class="xiugai">	
		<input type="hidden" name="id" value="${student.id }">
		学生姓名:<input type="text" name="sname" value="${student.sname }"><br>
		入学日期:<input type="text" name="birthday" value="<fmt:formatDate value="${student.birthday}" pattern="yyyy-MM-dd HH:mm:ss"/>"><br>
		学生性别:<input type="text" name="gender" value="${student.gender }"><br>
		联系方式:<input type="text" name="telephone" value="${student.telephone }"><br>
		学生邮箱:<input type="email" name="email" value="${student.email }"><br>
		班级信息:<input type="text" name="classid" value="${student.classid }"><br>
		<input type="submit" value="修改">
		<input type="button" value="返回" class="fanhui"><br/>
		</form>
		<script type="text/javascript">
			$(".xiugai").submit(function () {
				var id = $("input[name='id']").val();
				var sname = $("input[name='sname']").val();
				var birthday = $("input[name='birthday']").val();
				var gender = $("input[name='gender']").val();
				var telephone = $("input[name='telephone']").val();
				var email = $("input[name='email']").val();
				var classid = $("input[name='classid']").val();				
				$.ajax({
					url:"${pageContext.request.contextPath }/Student/doModifyStudent",
					data:{"id":id,"sname":sname,"birthday":birthday,"gender":gender,"telephone":telephone,"email":email,"classid":classid},
					type:"post",
					dataType:"html",
					success:function(data){
						$("body").html("");
						$("body").html(data);				
						}
					});
			});
		</script>
</body>
</html>