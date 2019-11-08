package com.xkit.easybuy.service;

import java.util.List;
import com.xkit.easybuy.entity.EasyBuy_UserInfo;


public interface Easybuy_userSevice {
    //查询(登录)
    public EasyBuy_UserInfo Login(String user, String pwd);

    //添加(注册)
    public boolean insert(EasyBuy_UserInfo user);

    //ajax验证
    public boolean Get(String loginname);

    //查询用户表信息（分页，模糊查询）
    public List<EasyBuy_UserInfo> SelectUserInfo(int pageindex, int pagesize, EasyBuy_UserInfo user) throws Exception;

    //查询总记录数
    public int Count(EasyBuy_UserInfo user) throws Exception;

    //删除用户信息
    public int delete(int id) throws Exception;

    //修改用户信息
    public int update(int id, EasyBuy_UserInfo user) throws Exception;

    //查询单条用户信息
    public EasyBuy_UserInfo querydtuserinfo(int id) throws Exception;
}

