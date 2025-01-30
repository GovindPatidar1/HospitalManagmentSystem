<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<p>
	<% 
		String errorMsg = (String) session.getAttribute("errorMsg");
		if(errorMsg ==null){
			/* out.print(message);	 */		
		}else{
			 out.print(errorMsg); 
		}
	%>
</p>