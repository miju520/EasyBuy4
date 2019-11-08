package com.xkit.easybuy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xkit.easybuy.dao.EasyBuy_userDAO;
import com.xkit.easybuy.entity.EasyBuy_UserInfo;
@Service
public class Easybuy_userSeviceImpl implements Easybuy_userSevice{
	@Autowired
    private EasyBuy_userDAO dao;
	public EasyBuy_userDAO getDao() {
		return dao;
	}
	public void setDao(EasyBuy_userDAO dao) {
		this.dao = dao;
	}
	
	public EasyBuy_UserInfo Login(String user, String pwd) {		
		return dao.Login(user, pwd);
	}
    
	public boolean insert(EasyBuy_UserInfo user){
		return dao.insert(user);
	}
	
	public boolean Get(String loginname){
		return dao.Get(loginname)==0;
	}

	public List<EasyBuy_UserInfo> SelectUserInfo(int pageindex, int pagesize,
			EasyBuy_UserInfo user) throws Exception {
		return dao.SelectUserInfo(pageindex, pagesize, user);
	}
	public int Count(EasyBuy_UserInfo user) throws Exception {
		return dao.Count(user);
	}
	public int delete(int id) throws Exception {		
		return dao.delete(id);
	}
	public int update(int id, EasyBuy_UserInfo user) throws Exception {
		return dao.update(id,user);
	}
	public EasyBuy_UserInfo querydtuserinfo(int id) throws Exception {
		return dao.querydtuserinfo(id);
	}
}
