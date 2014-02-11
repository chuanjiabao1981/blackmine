package org.blackmine.wechat.message.res;


/**
 * 文本消息
 * 
 */
public class ResTextMessage extends ResBaseMessage {
	// 回复的消息内容
	private String Content;

	public String getContent() {
		return Content;
	}

	public void setContent(String content) {
		Content = content;
	}
}
