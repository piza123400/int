<%@ page contentType ="text/html; charset=utf-8"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page errorPage="404error.jsp"%>


<jsp:useBean id="productDAO" class ="dao.ProductRepository" scope="session"/>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
  
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script><script type="text/javascript" src="http://fastly.ink.sapo.pt/3.1.10/js/ink-all.js"></script>
<link rel="stylesheet" type="text/css" href="http://fastly.ink.sapo.pt/3.1.10/css/ink.css"> <!-- inks css file -->

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="./resources/css/uikit.min.css" />
<script src="./resources/js/uikit.min.js"></script>
<script src="./resources/js/uikit-icons.min.js"></script>
<title>상품 상세 정보</title>
<script type="text/javascript">
	function addToCart() {
		if(confirm("상품을 장바구니에 추가하시겠습니까?")){
			document.addForm.submit();
		}else{
			document.addForm.reset();
		}
	}
</script>

</head>
<body>
   <jsp:include page="menu.jsp"/>
  
<%
   String id = request.getParameter("id");
   ProductRepository dao = ProductRepository.getInstance();
   Product product = dao.getProductById(id);
%>

<div class="jumbotron">
  <div class = "container">
   <div class = "row">
   <div class = "col-md-5">
   <img src="c:/upload/<%=product.getFilename()%>" style="width: 100%" />
   <div uk-lightbox>
    <a class="btn btn-outline-dark" href="#modal-full" uk-toggle>상세정보</a>
    
		
      
<div id="modal-full" class="uk-modal-full" uk-modal>
    <div class="uk-modal-dialog">
        <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
        <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-middle" uk-grid> 
            <div class="uk-background-cover" style="background-image: url('c:/upload/<%=product.getFilename()%>');" uk-height-viewport ></div>
            <div class="uk-padding-large">
                <h1>상세정보</h1>
                <p><h3><%=product.getPname() %></h3>
         <p><%=product.getDescription() %></p>
         <p> <b>상품 코드   </b>: <span class = "badge  badge-danger"><%=product.getProductId() %> </span>
         <p> <b>제조사</b> : <%=product.getManufacturer() %></p>
         <p><b>분류 </b> : <%= product.getCategory() %></p>
         <p><b>재고 수 </b> : <%=product.getUnitsInStock() %></p>
         <h4><%=product.getUnitPrice() %>원</h4>
         
         <p><form name="addForm" action="./addCart.jsp?id=<%=product.getProductId() %>" method="post">
         <a href="#" class="btn btn-info" onclick="addToCart()">상품 주문&raquo;</a>
         <a href="./cart.jsp" class="btn btn-warning"> 장바구니 &raquo;</a>
         <a href="./products.jsp" class="btn btn-secondary">상품 목록 &raquo;</a>
         </form>
            </div>
        </div>
    </div>
</div>
   </div>
   <p /n> 
    	<a href ="./addProduct.jsp" class ="btn btn-outline-dark">상품 추가1 </a>
  
        <a href = "./products.jsp" class = "btn btn-outline-dark">상품 목록 </a>  
        </p>
   </div>  
   </div>
   </div>
   </div>
<jsp:include page="footer.jsp"/>
</body>
</html>