<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ page isErrorPage="true"%>
<%
	response.setStatus(200);
%>

<!DOCTYPE html>

<html>
<head>

<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />

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

<title>404 not found</title>
</head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
#bg {
	position: fixed;
	top: -50%;
	left: -50%;
	width: 200%;
	height: 200%;
}

#bg img {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	margin: auto;
	min-width: 50%;
	min-height: 50%;
}

</style>



<body>
	<jsp:include page="menu.jsp" />

	<div class="bgimg">
		<img alt="" src="./resources/images/404.jpg">
	</div>
<div class="container">
	<p><%=request.getRequestURL() %></p>

</div>
	<p uk-margin>
		<!--     <a class="uk-button uk-button-danger" href="#modal-group-1" uk-toggle>404 not found</a>-->
		<a class="uk-button uk-button-danger" href="#modal-container"
			uk-toggle>404 NOT FOUND</a>
	</p>

	<div id="modal-container" class="uk-modal-container" uk-modal>
		<div class="uk-modal-dialog uk-modal-body">
			<button class="uk-modal-close-default" type="button" uk-close></button>
			<div class="uk-modal-header">
				<h2 class="uk-modal-title">404 not found</h2>
			</div>
			<div class="uk-modal-body">

				<p>404 not found 오류 코드는 해당 페이지가 없다거나 해당 문서를 찾을수 없을때, 주소의 오타등 해당
					페이지가 없거나 사라진 경우가 대부분입니다 보통 사이트의 주소이나 서버가 존재여부를 확인 하셔야 합니다.</p>

			</div>
			<div class="uk-modal-footer uk-text-right">
				<button class="uk-button uk-button-default uk-modal-close"
					type="button">Close</button>

			</div>
		</div>
	</div>
<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  3줄 요약
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">404 not found</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        오타 or 설계 미스 등으로 이곳에 와짐
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

      </div>
    </div>
  </div>
</div>



</body>
</html>