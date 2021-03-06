<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="../home.css">
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<style>
.box{float:left; padding:20px;}
</style>
</head>
<body>
   <div id="divPage">
      <!-- <div id="divSearch">
         <input type="text" id="txtWord"> <input type="button"
            id="btnSearch" value="검색">
      </div> -->
      <br><br><br><br>
      <div id="divHeader">
         <jsp:include page="../DOM/header.jsp" />
      </div>

      <div id="divMenu"><jsp:include page="../DOM/menu.jsp" /></div>
      <!-- 내용 입력 시작 ------------------------------------->
      <div id="divCondition">
         <div id="content2" >
              <c:forEach items="${type}" var="tvo">
               <div class="box">
                <div class="image"><img src="/clotheshop_F/proimg/${tvo.image}" width=300 height=200></div>
                <div class="goods_id">${tvo.goods_id}</div>
                  <div class="goods_name">${tvo.goods_name}</div>
                  <div class="price">${tvo.price}원</div>
                     </div>               
            </c:forEach>
         </div>
      </div>
   </div>
   <!-- 내용 입력 종료 --_---------------------------------->
         <hr>
            <div id="divfooter">
      <jsp:include page="../DOM/footer.jsp" />
   </div>
</body>

<script>

      /*$.ajax({
         type:"get",
         url:"/ClothShop/product/mainList",
         dataType:"json",
         success:function(data){
            var template = Handlebars.compile($("#temp").html());        
             $("#tbl").html(template(data));
         }
      })*/
   
   
   $("#content2").on("click",".box .image img",function(){
      var box=$(this).parent().parent();
      var goods_id=box.find(".goods_id").html();
      location.href="/clotheshop_F/product/productInfo?goods_id="+goods_id;
   })
</script>
</html>