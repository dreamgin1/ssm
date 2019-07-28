function pageHelper(url,totalPageNo,totalPageCount) {
	var pageStr = "";
	pageStr += "<ul class='page-num-ul clearfix'>";
	if(totalPageNo != 1){
		pageStr += "<li><a href='javascript:"+url+"(1);'>首页</a><li>"
			+"<li><a href='javascript:"+url+"("+(totalPageNo-1)+");'>上一页</a><li>";
	}
	if(totalPageCount<=5){
		for(var j = 1;j <= totalPageCount;j ++){
			if(j == totalPageNo){
				pageStr += "<li><a href='javascript:"+url+"("+j+");' class='thisclass'>"+j+"</a><li>";
			}else{
				pageStr += "<li><a href='javascript:"+url+"("+j+");'>"+j+"</a><li>";
			}
		}
	}else if(totalPageCount>5&&((totalPageCount-totalPageNo)<2)){
		pageStr += "<li><a href='javascript:"+url+"(1);'>1</a><li>"
			+"...";
		for(var j = totalPageCount - 2;j <= totalPageCount ;j ++){
			if(j == totalPageNo){
				pageStr += "<li><a href='javascript:"+url+"("+j+");' class='thisclass'>"+j+"</a><li>";
			}else{
				pageStr += "<li><a href='javascript:"+url+"("+j+");'>"+j+"</a><li>";
			}
		}
	}else if(totalPageCount>5&&totalPageNo<=2){
		for(var j = 1;j <= 3 ;j ++){
			if(j == totalPageNo){
				pageStr += "<li><a href='javascript:"+url+"("+j+");' class='thisclass'>"+j+"</a><li>";
			}else{
				pageStr += "<li><a href='javascript:"+url+"("+j+");'>"+j+"</a><li>";
			}
		}
		pageStr += "..."
			+"<li><a href='javascript:"+url+"("+totalPageCount+");'>"+totalPageCount+"</a><li>";
	}else{
		pageStr += "<li><a href='javascript:"+url+"(1);'>1</a><li>";
		if(totalPageNo!=3){
			pageStr += "...";
		}
		for(var j = totalPageNo- 1;j <= totalPageNo+ 1;j ++){
			if(j == totalPageNo){
				pageStr += "<li><a href='javascript:"+url+"("+j+");' class='thisclass'>"+j+"</a><li>";
			}else{
				pageStr += "<li><a href='javascript:"+url+"("+j+");'>"+j+"</a><li>";
			}
		}
		if(totalPageNo!=(totalPageCount-2)){
			pageStr += "...";
		}
		pageStr += "<li><a href='javascript:"+url+"("+totalPageCount+");'>"+totalPageCount+"</a><li>";
	}
	if(totalPageNo!=totalPageCount){
		pageStr += "<li><a href='javascript:"+url+"("+(totalPageNo+1)+");'>下一页</a><li>"
			+"<li><a href='javascript:"+url+"("+totalPageCount+");'>末页</a><li>";
	}
	pageStr += "</ul><br/>";
	pageStr += "<form id='pageActivity' action='javascript:;' method='get'>"
		+"<select name='totalPageNo'>";
	for(var i = 1;i <= totalPageCount;i ++){
		if(totalPageNo == i){
			pageStr += "<option value='"+i+"' selected='selected'>"+i+"</option>";
		}else{
			pageStr += "<option value='"+i+"'>"+i+"</option>";
		}
	}
	pageStr += "</select>"
		+"<input type='submit' value='跳转' />"
		+"</form>";
	return pageStr;
}
