package com.xkit.easybuy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xkit.easybuy.dao.EasyBuy_user_addressDAO;
import com.xkit.easybuy.entity.EasyBuy_UserInfo;
import com.xkit.easybuy.entity.EasyBuy_user_address;
@Service
public class EasyBuy_user_addressServiceImpl implements EasyBuy_user_addressService{
	@Autowired
    private EasyBuy_user_addressDAO dao;
	public EasyBuy_user_addressDAO getDao() {
		return dao;
	}
	public void setDao(EasyBuy_user_addressDAO dao) {
		this.dao = dao;
	}

	public int Add(EasyBuy_user_address e) {		
		return dao.insert(e);
	}
	public List<EasyBuy_UserInfo> QueryUser() {		
		return dao.selectuser();
	}

	
}
