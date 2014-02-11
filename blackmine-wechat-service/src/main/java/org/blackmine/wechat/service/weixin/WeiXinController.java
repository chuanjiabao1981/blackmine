package org.blackmine.wechat.service.weixin;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WeiXinController {
	private static final Logger logger = LoggerFactory.getLogger(WeiXinController.class);

	@RequestMapping(value="/weixin" ,method = RequestMethod.POST)
	public String weiXing(HttpServletRequest httpServletRequest)
	{
		logger.info("receive.........");
		return "";
	}
}
