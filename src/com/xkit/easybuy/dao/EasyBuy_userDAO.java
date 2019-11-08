package com.xkit.easybuy.dao;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.xkit.easybuy.entity.EasyBuy_UserInfo;


public interface EasyBuy_userDAO{
    //��ѯ(��¼)
    public EasyBuy_UserInfo Login(@Param("user")String user,@Param("pwd")String pwd);   
     	 
    //���(ע��)
  	public boolean insert(EasyBuy_UserInfo user);
  	
  	//ajax��֤
  	public int Get(String loginname);
  	
  	//��ѯ�û�����Ϣ����ҳ��ģ����ѯ��
  	public List<EasyBuy_UserInfo> SelectUserInfo(@Param("index")Integer pageindex,@Param("size")Integer pagesize,@Param("u")EasyBuy_UserInfo user);
  	
  	//��ѯ�ܼ�¼��
  	public int Count(@Param("u2")EasyBuy_UserInfo user);
  	
  	//ɾ������Ϣ
  	public int delete(int id);

    //�޸��û���Ϣ
	public int update(@Param("id") int id,@Param("user") EasyBuy_UserInfo user);

	//��ѯ�����û���Ϣ
	public EasyBuy_UserInfo querydtuserinfo(int id);
}
