package org.blackmine.wechat.message;

import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.blackmine.wechat.message.res.ResTextMessage;
import org.blackmine.wechat.message.tools.MessageUtil;
import org.springframework.stereotype.Service;

@Service("messageDispatcher")
public class MessageDispatcher {
	public static final String CMD_ECHO= "_echo";
    public String processRequest(HttpServletRequest request) 
    {
        String respMessage = null;  

        String respContent = "请求处理异常，请稍候尝试！";  

    	
        try {
			Map<String, String> requestMap = MessageUtil.parseXml(request);
			String r	   = "";
            // 消息类型  
            String msgType = requestMap.get(MessageUtil.MESSAGE_FIELD_MSG_TYPE);
         // 发送方帐号（open_id）  
            String fromUserName = requestMap.get("FromUserName");  
            // 公众帐号  
            String toUserName = requestMap.get("ToUserName");  
            
            if (msgType.equalsIgnoreCase(MessageUtil.REQ_MESSAGE_TYPE_TEXT)){
            	for(String key :requestMap.keySet() ){
            		r = r + key+":"+requestMap.get(key)+"\n";
            	}
            	 // 回复文本消息  
                ResTextMessage textMessage = new ResTextMessage();  
                textMessage.setToUserName(fromUserName);  
                textMessage.setFromUserName(toUserName);  
                textMessage.setCreateTime(new Date().getTime());  
                textMessage.setMsgType(MessageUtil.RESP_MESSAGE_TYPE_TEXT);  
                textMessage.setFuncFlag(0); 
                textMessage.setContent(r);  
                respMessage  = MessageUtil.textMessageToXml(textMessage);  

            	return respMessage;
            }

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  

    	return respMessage;
    }

}
