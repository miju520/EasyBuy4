package com.xkit.easybuy.service;

import java.util.List;
import com.xkit.easybuy.entity.EasyBuy_UserInfo;


public interface Easybuy_userSevice {
    //��ѯ(��¼)
    public EasyBuy_UserInfo Login(String user, String pwd);

    //���(ע��)
    public boolean insert(EasyBuy_UserInfo user);

    //ajax��֤
    public boolean Get(String loginname);

    //��ѯ�û�����Ϣ����ҳ��ģ����ѯ��
    public List<EasyBuy_UserInfo> SelectUserInfo(int pageindex, int pagesize, EasyBuy_UserInfo user) throws Exception;

    //��ѯ�ܼ�¼��
    public int Count(EasyBuy_UserInfo user) throws Exception;

    //ɾ���û���Ϣ
    public int delete(int id) throws Exception;

    //�޸��û���Ϣ
    public int update(int id, EasyBuy_UserInfo user) throws Exception;

    //��ѯ�����û���Ϣ
    public EasyBuy_UserInfo querydtuserinfo(int id) throws Exception;
}

