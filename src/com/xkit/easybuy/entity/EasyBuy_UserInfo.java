package com.xkit.easybuy.entity;

import org.hibernate.validator.constraints.NotEmpty;

import com.xkit.easybuy.verified.UserLogin;
import com.xkit.easybuy.verified.UserRegister;

/**
 * �û���Ϣ
 * @author Administrator
 *
 */
public class EasyBuy_UserInfo {
        private Integer id;
        @NotEmpty(groups={UserLogin.class,UserRegister.class},message="�ǳƲ���Ϊ�գ�")
        private String loginName;
        @NotEmpty(groups={UserRegister.class},message="�û�������Ϊ�գ�")
        private String userName;
        @NotEmpty(groups={UserLogin.class,UserRegister.class},message="���벻��Ϊ�գ�")
        private String password;
        @NotEmpty(groups={UserRegister.class},message="ȷ�����벻��Ϊ�գ�")
        private String rpassword;
        @NotEmpty(groups={UserRegister.class},message="�Ա���Ϊ�գ�")
		private Integer sex;
        @NotEmpty(groups={UserRegister.class},message="���֤����Ϊ�գ�")
        private String identityCode;
        @NotEmpty(groups={UserRegister.class},message="���䲻��Ϊ�գ�")
        private String email;
        @NotEmpty(groups={UserRegister.class},message="�绰����Ϊ�գ�")
        private String mobile;
        private Integer type;
        
        public EasyBuy_UserInfo(){}
        
		public EasyBuy_UserInfo(String loginName, String userName,
				String password, Integer sex, String identityCode, String email,
				String mobile, Integer type) {
			super();
			this.loginName = loginName;
			this.userName = userName;
			this.password = password;
			this.sex = sex;
			this.identityCode = identityCode;
			this.email = email;
			this.mobile = mobile;
			this.type = type;
		}

		
		public String getLoginName() {
			return loginName;
		}
		public void setLoginName(String loginName) {
			this.loginName = loginName;
		}
		public String getUserName() {
			return userName;
		}
		public void setUserName(String userName) {
			this.userName = userName;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public String getRpassword() {
			return rpassword;
		}
		public void setRpassword(String rpassword) {
			this.rpassword = rpassword;
		}
		
		public String getIdentityCode() {
			return identityCode;
		}
		public void setIdentityCode(String identityCode) {
			this.identityCode = identityCode;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getMobile() {
			return mobile;
		}
		public void setMobile(String mobile) {
			this.mobile = mobile;
		}

		public Integer getId() {
			return id;
		}

		public void setId(Integer id) {
			this.id = id;
		}

		public Integer getSex() {
			return sex;
		}

		public void setSex(Integer sex) {
			this.sex = sex;
		}

		public Integer getType() {
			return type;
		}

		public void setType(Integer type) {
			this.type = type;
		}
		
        
}
