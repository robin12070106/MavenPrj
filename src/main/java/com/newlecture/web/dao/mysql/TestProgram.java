package com.newlecture.web.dao.mysql;

import java.util.List;

import com.newlecture.web.dao.NoticeDao;
import com.newlecture.web.entity.NoticeView;

public class TestProgram {

	public static void main(String[] args) {
		NoticeDao noticeDao = new MySQLNoticeDao();
		List<NoticeView> list = noticeDao.getList();
		
		for (NoticeView view : list) {
			System.out.println(view.getTitle());
		}
		
	}

}
