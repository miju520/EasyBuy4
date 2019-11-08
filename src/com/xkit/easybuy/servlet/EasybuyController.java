package com.xkit.easybuy.servlet;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.xkit.easybuy.entity.EasyBuy_UserInfo;
import com.xkit.easybuy.entity.PageBean;
import com.xkit.easybuy.service.Easybuy_userSevice;
import com.xkit.easybuy.verified.UserLogin;
import com.xkit.easybuy.verified.UserRegister;

import javax.servlet.http.HttpSession;


//控制器
@Controller
public class EasybuyController {
	@Autowired
	private Easybuy_userSevice u;

	//初始化主界面
	@RequestMapping("/InitRegister2")
	public String InitRegister2() {
		return "WEB-INF/manage/Register2";
	}

	//1.映射器 (登录)
	@RequestMapping("/LoginController")
	public String Login(@Validated(value = {UserLogin.class}) @ModelAttribute EasyBuy_UserInfo user, BindingResult r, Model m, HttpSession session) {
		EasyBuy_UserInfo ee = u.Login(user.getLoginName(), user.getPassword());
		if (ee != null) {
			session.setAttribute("name", user.getLoginName());
			return "WEB-INF/manage/main";
		} else {
			m.addAttribute("msg", "登录失败");
			return "Login";
		}
	}

	//2.注册
	@RequestMapping("/RegisterController")
	public @ResponseBody String Register(EasyBuy_UserInfo us, Model m) {
		boolean isOK = u.insert(us);
		String rs = "1";
		if (isOK) {
			m.addAttribute("msg", "注册成功！");
			return "0";
		}
		return rs;
	}

	//3.ajax验证用户名是否被占用
	@RequestMapping("/CheckLogin")
	public @ResponseBody String CheckLogin(String loginName) {
		boolean isOK = u.Get(loginName);
		String rs = "1";
		if (isOK) {
			rs = "0";
		}
		return rs;
	}

	@RequestMapping("/deleteUserInfo/{abc}")
	public String deleteUserInfo(@PathVariable("abc") int id, Model m) throws Exception {
		int count = u.delete(id);
		if (count > 0) {
			m.addAttribute("msg", "删除成功！");
		} else {
			m.addAttribute("msg", "删除失败!");
		}
		return "redirect:/QueryUserInfo";
	}

	//分页查询用户信息
	@RequestMapping("/QueryUserInfo")
	public String QueryUserInfo(@RequestParam(defaultValue = "1") int pageindex, @ModelAttribute EasyBuy_UserInfo user, Model m) throws Exception {

		Integer count = u.Count(user);
		int pagesize = 2;
		int pageCount = (count % pagesize == 0) ? count / pagesize : count / pagesize + 1;
		if (pageindex < 1 || pageindex > pageCount) {
			pageindex = 1;
		}
		PageBean pb = new PageBean();
		pb.setCount(count);
		pb.setPageCount(pageCount);
		pb.setPageIndex(pageindex);
		List<EasyBuy_UserInfo> pageList = u.SelectUserInfo(((pageindex - 1) * pagesize), pagesize, user);
		pb.setPageList(pageList);
		m.addAttribute("list", pb);
		return "WEB-INF/manage/list";

	}

	//查询单条用户信息
	@RequestMapping("/show/{a}")
	public String show(@PathVariable("a")int id,Model m) throws Exception {
		EasyBuy_UserInfo user = u.querydtuserinfo(id);
		m.addAttribute("user",user);
        return "WEB-INF/manage/showuserInfo";
	}

	@RequestMapping("/UserUpdate")
	public String UserUpdate(int id,EasyBuy_UserInfo user,Model m) throws Exception {
		int count = u.update(id,user);

		if(count>0){
			m.addAttribute("msg","修改成功！");
		}else{
			m.addAttribute("msg","修改失败！");
		}
		return "redirect:/QueryUserInfo";
	}

}
