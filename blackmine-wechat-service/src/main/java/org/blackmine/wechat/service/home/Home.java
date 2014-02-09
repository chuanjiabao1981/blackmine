package org.blackmine.wechat.service.home;

import org.blackmine.wechat.tools.SignUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class Home {
	private String WECHAT_TOKEN="weixinCourse";
	@RequestMapping(value = "/", method = RequestMethod.GET,produces="text/html;charset=UTF-8")
	@ResponseBody
	public String index(@RequestParam(value="signature") String signature,
						@RequestParam(value="echostr")   String echostr,
						@RequestParam(value="timestamp") String timestamp,
						@RequestParam(value="nonce")	 String nonce
						)
	{
		
		if (SignUtil.checkSignature(signature, WECHAT_TOKEN, timestamp, nonce)){
			return echostr;
		}
		return "";
	}

}
