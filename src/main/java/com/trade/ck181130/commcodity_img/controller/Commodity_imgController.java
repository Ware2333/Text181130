package com.trade.ck181130.commcodity_img.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.trade.ck181130.commcodity_img.model.Commodity_imgModel;
import com.trade.ck181130.commcodity_img.service.Commodity_imgService;

@Controller
@RequestMapping("/commcodity_img")
public class Commodity_imgController {
	@Autowired
	private Commodity_imgService commodity_imgsercice;
	
	private String PATH = "D:/image/";
	
	@ResponseBody
	@RequestMapping("/insert")
	public String insert(Commodity_imgModel connmodity_imgmodel) {
		return commodity_imgsercice.insert(connmodity_imgmodel);
	}
	
	@ResponseBody
	@RequestMapping("/delete")
	public String delete(Commodity_imgModel connmodity_imgmodel) {
		return commodity_imgsercice.deleteModel(connmodity_imgmodel);
	}
	
	@ResponseBody
	@RequestMapping("/update")
	public String update(Commodity_imgModel connmodity_imgmodel) {
		return commodity_imgsercice.updateModel(connmodity_imgmodel);
	}
	
	@ResponseBody
	@RequestMapping(value = "/select", produces = "application/json;charset=UTF-8")
	public String select(Commodity_imgModel connmodity_imgmodel) {
		return commodity_imgsercice.selectall(connmodity_imgmodel);
	}
	
	@ResponseBody
	@RequestMapping(value = "/log", produces = "application/json;charset=UTF-8")
	public String log(Commodity_imgModel connmodity_imgmodel) {
		return commodity_imgsercice.log(connmodity_imgmodel);
	}
	
	@ResponseBody
	@RequestMapping("/upload")
	public String upload(String commodity_code,HttpServletRequest request) throws IllegalStateException, IOException {
		File f = new File(PATH);// windows系统是双右斜线
		if (!f.exists()) {// 判断文件夹是否存在
			f.mkdirs();// 创建文件夹
		}
		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(
                request.getSession().getServletContext());
        // 检查form中是否有enctype="multipart/form-data"
        if (multipartResolver.isMultipart(request)) {
            // 将request变成多部分request
            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
            // 获取multiRequest 中所有的文件名
            Iterator<String> iter = multiRequest.getFileNames();
            // 一次遍历所有文件
            while (iter.hasNext()) {
                MultipartFile file = multiRequest.getFile(iter.next().toString());
                if (file != null) {
                    String filename = file.getOriginalFilename();
                    String saveName = UUID.randomUUID().toString() + filename.substring(filename.lastIndexOf("."));
                    String path = PATH + saveName;
                    file.transferTo(new File(path));// 上传 
                    Commodity_imgModel ni = new Commodity_imgModel();
                    ni.setCommodity_code(commodity_code);
                    ni.setImg_url(saveName);
                    ni.setImg_type("2");
                    commodity_imgsercice.insert(ni);
                }
            }
        }
        Map<String, String> result = new HashMap<>();
        result.put("code", "0");
        return new JSONObject(result).toString();
	}
}
