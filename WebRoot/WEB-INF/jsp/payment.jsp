<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>ePayment - First Step</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    

  </head>
  
  <body>
  <table width="960" border="0" align="center">
    <tr>
      <td width="536" valign="top">
	    <form action="${pageContext.request.contextPath}/servlet/yeepay/PaymentRequest?orderid=${orderid }&amount=${amount }" method="post" name="paymentform">
	       <table width="100%" border="0">
	            <tr>
	               <td height="30" colspan="4">
	                 <table width="100%" height="50" border="0" cellpadding="0" cellspacing="1" bgcolor="#A2E0FF">
	                   <tr>
	                     <td align="center" bgcolor="#F7FEFF"><h3>�����ţ�${orderid } Ӧ����${amount }Ԫ</h3></td>
	                   </tr>
	                 </table>
	               </td>
	           </tr>
	           <tr>
	              <td colspan="4">&nbsp;</td>
	           </tr>
	           <tr>
	              <td height="30" colspan="4" bgcolor="#F4F8FF"><span class="STYLE3">����ѡ������֧������</span> </td>
	           </tr>
		      <tr>
		        <td width="26%" height="25"><INPUT TYPE="radio" NAME="pd_FrpId" value="CMBCHINA-NET">�������� </td>
		        <td width="25%" height="25"><INPUT TYPE="radio" NAME="pd_FrpId" value="ICBC-NET">��������</td>
		        <td width="25%" height="25"><INPUT TYPE="radio" NAME="pd_FrpId" value="ABC-NET">ũҵ����</td>
		        <td width="24%" height="25"><INPUT TYPE="radio" NAME="pd_FrpId" value="CCB-NET">�������� </td>
		      </tr>
		      <tr>
		        <td height="25"><INPUT TYPE="radio" NAME="pd_FrpId" value="CMBC-NET">�й�������������</td>
		        <td height="25"><INPUT TYPE="radio" NAME="pd_FrpId" value="CEB-NET" >������� </td>
		        <td height="25"><INPUT TYPE="radio" NAME="pd_FrpId" value="BOCO-NET">��ͨ����</td>
		        <td height="25"><INPUT TYPE="radio" NAME="pd_FrpId" value="SDB-NET">���ڷ�չ����</td>
		      </tr>
		      <tr>
		        <td height="25"><INPUT TYPE="radio" NAME="pd_FrpId" value="BCCB-NET">��������</td>
		        <td height="25"><INPUT TYPE="radio" NAME="pd_FrpId" value="CIB-NET">��ҵ���� </td>
		        <td height="25"><INPUT TYPE="radio" NAME="pd_FrpId" value="SPDB-NET">�Ϻ��ֶ���չ���� </td>
		        <td ><INPUT TYPE="radio" NAME="pd_FrpId" value="ECITIC-NET">��������</td>
		      </tr>
		      <tr>
		        <td colspan="4">&nbsp;</td>
		      </tr>
		      <tr>
		        <td colspan="4" align="center"><input type="submit" value=" ȷ��֧�� " /></td>
		      </tr>
          </table>
	    </form>
	  </td>
    </tr>
  
    <tr>
	    <td>&nbsp;</td>
	    <td width="290">&nbsp;</td>
	    <td width="120">&nbsp;</td>
    </tr>
  
  </table>
  
  </body>
</html>