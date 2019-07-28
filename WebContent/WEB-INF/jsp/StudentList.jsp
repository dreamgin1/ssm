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
	<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/pageHelper.js"></script>
</head>
<body>
<div id="spage">
<input type="button" value="添加"class="tianjia"><br/>
	<table>
		<thead>
			<tr>
				<th>学生编号</th>
				<th>学生姓名</th>
				<th>入学日期</th>
				<th>学生性别</th>
				<th>联系方式</th>
				<th>学生邮箱</th>
				<th>班级信息</th>
				<th>操作</th>
			</tr>
		</thead>
		<c:forEach var="student" items="${StudentList }" varStatus="status">
		<tr>						
			<td><span>${student.id}</span></td>
			<td><span>${student.sname}</span></td>
			<td><span><fmt:formatDate value="${student.birthday}" pattern="yyyy-MM-dd HH:mm:ss"/></span></td>
			<td><span>${student.gender}</span></td>
			<td><span>${student.telephone}</span></td>
			<td><span>${student.email}</span></td>
			<td><span>${student.cname}</span></td>
			<td><a href="javascript:;" class="chakan" chakanid=${student.id }>查看</a>
				<a href="javascript:;" class="xiugai" xiugaiid=${student.id }>修改</a>
				<a href="javascript:;" class="shanchu" shanchuid=${student.id }>删除</a></td>
			</tr>
		</c:forEach>		
	</table>
	<div id="studentpage"></div>
	</div>
	<script type="text/javascript">
	  function StrudentPage(totalPageNo,sname) {
	    	$("#spage").load("${pageContext.request.contextPath }/Student/StudentList","totalPageNo="+totalPageNo);
	    }	
	    
	    $(document).ready(function() {	    
	    	var totalPageNo = ${pageUtil.totalPageNo};
	    	var totalPageCount = ${pageUtil.totalPageCount};
	        var pageStr = pageHelper("StrudentPage",totalPageNo,totalPageCount);    
	    	$("#studentpage").html("");
	    	$("#studentpage").html(pageStr);
	        $("#pageActivity").submit(function () {      
	            var totalPageNo = $("#pageActivity select").val();
	            StrudentPage(totalPageNo);
	        });
	        $(".chakan").click(function () {
				var id = $(this).attr("chakanid");
				$.ajax({
					url:"${pageContext.request.contextPath }/Student/SelectStudent",
					data:{"id":id},
					type:"post",
					dataType:"html",
					success:function(data){
						$("#spage").html("");
						$("#spage").html(data);
						}
					});
			});
			$(".shanchu").click(function () {
				var id = $(this).attr("shanchuid");
				alert(id);
				$.ajax({
					url:"${pageContext.request.contextPath }/Student/DeleteStudent",
					data:{"id":id},
					type:"post",
					dataType:"html",
					success:function(data){
						$("#spage").html("");
						$("#spage").html(data);
						}
					});
			});
			$(".tianjia").click(function () {
		    	$("#spage").html("");				
		    	$("#spage").load("${pageContext.request.contextPath }/Student/SaveStudent");			
			});
			$(".xiugai").click(function () {
				var id = $(this).attr("xiugaiid");
				alert(id);
				$.ajax({
					url:"${pageContext.request.contextPath }/Student/ModifyStudent",
					data:{"id":id},
					type:"post",
					dataType:"html",
					success:function(data){
						$("#spage").html("");
						$("#spage").html(data);
						}
					});
			});	
	    });
	</script>
</body>
</html>