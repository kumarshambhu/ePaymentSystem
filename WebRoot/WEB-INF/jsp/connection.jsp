<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>

<html>
  <head>
    <title>launch the request</title>
    
    <meta http-equiv="param" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
  </head>
  
  <body onload="javascript:document.forms[0].submit()">
	<form name="yeepay" action="http://www.yeepay.com/app-merchant-proxy/node" method='post'>	
		
		<input type='hidden' name='p0_Cmd'   value="${messageType}"> <!-- ��������,����֧���̶�ΪBuy -->
		<input type='hidden' name='p1_MerId' value="${merchantID}"> <!-- �̼�ID -->
		<input type="hidden" name="p2_Order" value="${orderId}"> <!-- �̼ҵĽ��׶����� -->
		<input type='hidden' name='p3_Amt'   value="${amount}"> <!-- ������� -->
		<input type='hidden' name='p4_Cur'   value="${currency}"> <!-- ���ҵ�λ -->
		<input type='hidden' name='p5_Pid'   value="${productId}"> <!-- ��ƷID -->
		<input type='hidden' name='p6_Pcat'  value="${productCat}"> <!-- ��Ʒ���� -->
		<input type='hidden' name='p7_Pdesc' value="${productDesc}"> <!-- ��Ʒ���� -->
		<input type='hidden' name='p8_Url'   value="${merchantCallbackURL}"> <!-- ���׽��֪ͨ��ַ -->
		<input type='hidden' name='p9_SAF'   value="${addressFlag}"> <!-- ��Ҫ��д�ͻ���Ϣ 0������Ҫ 1:��Ҫ -->
		<input type='hidden' name='pa_MP'    value="${sMctProperties}"> <!-- �̼���չ��Ϣ -->
		<input type='hidden' name='pd_FrpId' value="${frpId}"> <!-- ����ID -->
		
		<!-- Ӧ����� Ϊ��1��: ��ҪӦ�����;Ϊ��0��: ����ҪӦ����� -->
		<input type="hidden" name="pr_NeedResponse"  value="0">
		
		<!-- MD5-hmac��֤�� -->
		<input type='hidden' name='hmac' value="${hmac}">
		
		<!--  <input type='submit' value='submit'> -->
	</form>
  </body>
</html>
