package com.xkit.easybuy.service;

import java.util.List;
import com.xkit.easybuy.entity.EasyBuy_UserInfo;
import com.xkit.easybuy.entity.EasyBuy_user_address;

public interface EasyBuy_user_addressService {
	   
       public int Add(EasyBuy_user_address ea);
       
       public List<EasyBuy_UserInfo> QueryUser();
}
