<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript">
       function deleteitem(id){
           var b = window.confirm("Are you sure to delete this product？");
           if(b){
           		window.location.href="${pageContext.request.contextPath }/servlet/DeleteItemServlet?id="+id;
           }
       }
       
       function clearcart(){
         	var b = window.confirm("Are you sure to clear your shopping cart？");
         	if(b){
         		window.location.href="${pageContext.request.contextPath }/servlet/ClearCartServlet";
         	}
       }
       
       function changeQuantity(input,id,previousValue){
            var quantity = input.value; //得到要修改的数量
             
             /*
             //验证输入是否为数字
               if(isNaN(quantity)){
             	  alert("Please enter a number！");
             	  input.value=previousValue;
             	  return;
             }*/
             
             //验证输入是否为正整数
               if(quantity<0||quantity!=parseInt(quantity)){
             	  alert("Please enter a Integer！");
             	  input.value=previousValue;
             	  return;
             }
            
               var b =window.confirm("Are you sure to change the quantity to "+quantity+"？");
             if(b){
                 window.location.href="${pageContext.request.contextPath }/servlet/ChangeQuantityServlet?id="+id+"&quantity="+quantity;
             }
       }
       function recordHistory(cartPrice){
     	  var b = window.confirm("Are you sure to pay now？");
     	  if(b){
     		  window.location.href="${pageContext.request.contextPath }/servlet/PaymentServlet?amount="+cartPrice;

     	  }
       }
    </script>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	
	<link rel="stylesheet" href="../css/base.css">
	<link href="../css/purchase.2012.css?v=201212081831" rel="stylesheet" type="text/css">
	<title>My Shopping Cart</title>
</head>
