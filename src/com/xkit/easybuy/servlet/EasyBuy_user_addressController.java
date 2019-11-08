package com.xkit.easybuy.servlet;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSON;
import com.xkit.easybuy.entity.EasyBuy_UserInfo;
import com.xkit.easybuy.entity.EasyBuy_user_address;
import com.xkit.easybuy.service.EasyBuy_user_addressService;
@Controller
public class EasyBuy_user_addressController {
	    @Autowired
        private EasyBuy_user_addressService e;
	    @RequestMapping("/initAdd")
	    public String initadd(){
	    	return "WEB-INF/pager/Address";
	    }
	    
	    @RequestMapping("/Upload")
	    public String Upload(){
	    	return "WEB-INF/pager/Upload";
	    }
	    
	    @ModelAttribute("userlist")
	    public List<EasyBuy_UserInfo> Queryadd(){
	    	 List<EasyBuy_UserInfo> listuser = e.QueryUser();	    	
	    	 return listuser;
	    }
	    
	    @RequestMapping("/address")
	    public String Adds(EasyBuy_user_address ea,Model m){
	    	int s = e.Add(ea);
	    	if(ea.getIsDefault()==null){
	    		ea.setIsDefault(0);
	    	}
	    	if(s>0){
	    		m.addAttribute("msg","添加成功!");
	    		return "WEB-INF/pager/Address";
	    	}else{
	    		m.addAttribute("msg","添加失敗!");
	    		return "WEB-INF/pager/Address";
	    	}
	    	
	    }
	    @RequestMapping("/fileupload")
	    public String FileUpload(@RequestParam("zp") MultipartFile [] zp,HttpServletRequest req) throws IllegalStateException, IOException{
	    	   /*String filename=zp.getOriginalFilename();//获得文件名
	    	   File file = new File(req.getRealPath("/photo")+"/"+filename);
	    	   zp.transferTo(file);*/
	    	   for(MultipartFile fj:zp){
	    		   String name = fj.getOriginalFilename();
	    		   String hz = name.substring(name.lastIndexOf("."));
	    		   name = System.currentTimeMillis()+hz;
	    		   File file = new File(req.getRealPath("/photo")+"/"+name);
	    		   fj.transferTo(file);
	    	   }
	    	   return "WEB-INF/pager/Upload";
	    }
	     
	     @RequestMapping("/ShowUser")
	     public @ResponseBody List<EasyBuy_UserInfo> ShowUser(){
	    	 List<EasyBuy_UserInfo> listuser = e.QueryUser();	
	    	 return listuser;
	     }
}
