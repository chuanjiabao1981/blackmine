package org.blackmine.wechat.message;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.blackmine.wechat.message.tools.MessageUtil;
import org.springframework.stereotype.Service;

@Service("messageDispatcher")
public class MessageDispatcher {
	public static final String CMD_ECHO= "_echo";
    public String processRequest(HttpServletRequest request) 
    {
    	
        String respContent = "请求处理异常，请稍候尝试！";  

    	
        try {
			Map<String, String> requestMap = MessageUtil.parseXml(request);
			String r	   = "";
            String msgType = requestMap.get(MessageUtil.MESSAGE_FIELD_MSG_TYPE);
            
            if (msgType.equalsIgnoreCase(MessageUtil.REQ_MESSAGE_TYPE_TEXT)){
            	for(String key :requestMap.keySet() ){
            		r = key+":"+requestMap.get(key)+"\n";
            	}
            	return r;
            }

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  

    	return respContent;
    }

}
