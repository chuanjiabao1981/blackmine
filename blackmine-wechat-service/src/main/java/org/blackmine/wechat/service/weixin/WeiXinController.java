package org.blackmine.wechat.service.weixin;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WeiXinController {
	private static final Logger logger = LoggerFactory.getLogger(WeiXinController.class);

	@RequestMapping(value="/weixin")
	public String weiXing(HttpRequest httpRequest)
	{
		logger.info("receive.........");
		return "";
	}
}
