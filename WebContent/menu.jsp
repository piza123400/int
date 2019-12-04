<%@ page contentType ="text/html; charset=utf-8"%>

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="http://fastly.ink.sapo.pt/3.1.10/js/ink-all.js"></script>

<link rel="stylesheet" type="text/css"
	href="http://fastly.ink.sapo.pt/3.1.10/css/ink.css">
<!-- inks css file -->

<!-- https://getuikit.com/docs/margin -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="./resources/css/uikit.min.css" />
<script src="./resources/js/uikit.min.js"></script>
<script src="./resources/js/uikit-icons.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>


<nav class="navbar navbar-expand  navbar-dark bg-dark">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="./welcome.jsp">Home</a>
		</div>
		<div>
			<ul class="navbar-nav mr-auto">
				<c:choose>
					<c:when test="${empty sessionId}">
					<li class="nav-item"><a class="nav-link" href="<c:url value="/member/loginMember.jsp"/>">로그인 </a></li>
					<li class="nav-item"><a class="nav-link" href="<c:url value="/member/addMember.jsp"/>">회원가입 </a></li>
					</c:when>
					<c:otherwise>
						<li style="padding-top: 7px; color: white">[<%=session%>님]</li>
						<li class="nav-item"><a class="nav-link" href="<c:url value="/member/logoutMember.jsp"/>">로그아웃</a></li>
						<li class="nav-item"><a class="nav-link" href="<c:url value="/member/updateMember.jsp"/>">회원 수정</a></li>
						</c:otherwise>
					</c:choose>
					<li class="nav-item"><a class="nav-link" href="./products.jsp">상품목록</a></li>
					<li class="nav-item"><a class="nav-link" href="./addProduct.jsp">상품등록</a></li>
					<li class="nav-item"><a class="nav-link" href="./editProduct.jsp?edit=update">상품수정</a></li>
					<li class="nav-item"><a class="nav-link" href="./editProduct.jsp?edit=delete">상품삭제</a></li>
				
				
			</ul>
		
		</div>
	</div>
</nav>

