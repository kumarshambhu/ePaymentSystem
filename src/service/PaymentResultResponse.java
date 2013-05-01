package service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utils.ConfigInfo;
import utils.EPaymentUtils;

public class PaymentResultResponse extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("GBK");
		String merchantID = request.getParameter("p1_MerId"); // �̼�ID
		String keyValue = ConfigInfo.getValue("keyValue"); // �̼���Կ
		
		String sCmd = request.getParameter("r0_Cmd"); //ҵ������
		String sResultCode = request.getParameter("r1_Code"); //�ۿ���,���ֶ�ֵΪ1ʱ��ʾ�ۿ�ɹ�.
		String sTrxId = request.getParameter("r2_TrxId"); //YeePay�ױ����׶�����
		String amount = request.getParameter("r3_Amt");//�ۿ���,���׽�����,YeePay�ױ�����ϵͳ��ʵ�ʿۿ���ظ��̻�
		String currency = request.getParameter("r4_Cur");//���ױ���,�����ΪCNY
		String productId = request.getParameter("r5_Pid");//��ƷID
		String orderId = request.getParameter("r6_Order");//�̻�������
		String userId = request.getParameter("r7_Uid");//YeePay�ױ���ԱID
		String mp  = request.getParameter("r8_MP");//�̻���չ��Ϣ,����������д1K ���ַ���,���׷���ʱ��ԭ������
		String bType = request.getParameter("r9_BType");//���׽��֪ͨ����,1: ���׳ɹ��ص�(������ض���)2: ���׳ɹ�����֪ͨ(��������Ե�ͨѶ)
		String rb_BankId  = request.getParameter("rb_BankId");//֧������
		String rp_PayDate = request.getParameter("rp_PayDate");//������֧��ʱ��ʱ��
		String hmac = request.getParameter("hmac");//MD5����ǩ��
		
		boolean result = EPaymentUtils.verifyCallback(hmac, merchantID, sCmd, sResultCode, sTrxId, amount,
				currency, productId, orderId, userId, mp, bType, keyValue);
		if(result){
			if("1".equals(sResultCode)){
				//��������ط�Ӧ�ð����ݿ��ж�����֧��״̬���ó��Ѿ�֧��.
				String message = "Order ID:  "+ orderId+ "<br/>This order has been paid SUCCESSFULLY!<br/><br/>";
				message += "Customer paid "+ amount +" Yuan <br/><br/>";
				/*message +=",���׽��֪ͨ����:";
				if("1".equals(bType)){
					 message += "������ض���";
				}else if("2".equals(bType)){
					 message += "�ױ�֧�����غ�̨����֪ͨ";
				}*/
				message += "Order ID in Yeepay's system is :"+ sTrxId;
				request.setAttribute("message", message);
			}else{
				request.setAttribute("message", "Payment Failed");
			}
		}else{
			request.setAttribute("message", "Data received is illegal !");
		}
		request.getRequestDispatcher("/WEB-INF/jsp/paymentResult.jsp").forward(request, response);
	
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
