package com.xkit.easybuy.dao;

import java.util.List;

import com.xkit.easybuy.entity.EasyBuy_UserInfo;
import com.xkit.easybuy.entity.EasyBuy_user_address;

public interface EasyBuy_user_addressDAO {
	 //��ԃ
     public List<EasyBuy_UserInfo> selectuser(); 
     //����
     public int insert(EasyBuy_user_address e);
}
