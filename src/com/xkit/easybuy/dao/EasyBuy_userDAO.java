package com.xkit.easybuy.dao;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.xkit.easybuy.entity.EasyBuy_UserInfo;


public interface EasyBuy_userDAO{
    //查询(登录)
    public EasyBuy_UserInfo Login(@Param("user")String user,@Param("pwd")String pwd);   
     	 
    //添加(注册)
  	public boolean insert(EasyBuy_UserInfo user);
  	
  	//ajax验证
  	public int Get(String loginname);
  	
  	//查询用户表信息（分页，模糊查询）
  	public List<EasyBuy_UserInfo> SelectUserInfo(@Param("index")Integer pageindex,@Param("size")Integer pagesize,@Param("u")EasyBuy_UserInfo user);
  	
  	//查询总记录数
  	public int Count(@Param("u2")EasyBuy_UserInfo user);
  	
  	//删除用信息
  	public int delete(int id);

    //修改用户信息
	public int update(@Param("id") int id,@Param("user") EasyBuy_UserInfo user);

	//查询单条用户信息
	public EasyBuy_UserInfo querydtuserinfo(int id);
}
