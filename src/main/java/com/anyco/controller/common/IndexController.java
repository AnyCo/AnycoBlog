package com.anyco.controller.common;


import com.anyco.entity.Blog;
import com.anyco.entity.PageBean;
import com.anyco.service.BlogService;
import com.anyco.utils.PageUtil;
import com.anyco.utils.StringUtil;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 主页Controller
 */
@Controller
@RequestMapping("/")
public class IndexController {

	@Resource
	private BlogService blogService;
	
	
	/**
	 * 请求主页
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/index")
	public ModelAndView index(@RequestParam(value="page",required=false)String page,@RequestParam(value="typeId",required=false)String typeId,@RequestParam(value="releaseDateStr",required=false)String releaseDateStr,HttpServletRequest request)throws Exception{
		ModelAndView mav=new ModelAndView();
		if(StringUtil.isEmpty(page)){
			page="1";
		}
		PageBean pageBean=new PageBean(Integer.parseInt(page),10);
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("start", pageBean.getStart());
		map.put("size", pageBean.getPageSize());
		map.put("typeId", typeId);

		//转码之前
		System.out.println("request字符集:" + request.getCharacterEncoding());
		System.out.println("转码之前，日期releaseDateStr:" + releaseDateStr);

		//乱码问题，未解决
		if(!StringUtil.isEmpty(releaseDateStr)) {
			releaseDateStr = new String(releaseDateStr.getBytes(), "UTF-8");
			System.out.println("转码之后，日期releaseDateStr:" + releaseDateStr);
		}

		map.put("releaseDateStr", releaseDateStr);

		List<Blog> blogList=blogService.list(map);
		System.out.println("blogList的size: " + blogList.size());

		for(Blog blog:blogList){
			List<String> imagesList=blog.getImagesList();
			String blogInfo=blog.getContent();
			Document doc=Jsoup.parse(blogInfo);
			Elements jpgs=doc.select("img[src$=.jpg]"); //　查找扩展名是jpg的图片
			for(int i=0;i<jpgs.size();i++){
				Element jpg=jpgs.get(i);
				imagesList.add(jpg.toString()); //主要用于博文列表图片缩略图展示
				if(i==2){
					break;
				}
			}
		}

		mav.addObject("blogList", blogList);
		StringBuffer param=new StringBuffer(); // 查询参数
		if(StringUtil.isNotEmpty(typeId)){
			param.append("typeId="+typeId+"&");
		}
		if(StringUtil.isNotEmpty(releaseDateStr)){
			param.append("releaseDateStr="+releaseDateStr+"&");
		}
		mav.addObject("pageCode", PageUtil.genPagination(request.getContextPath()+"/index.html", blogService.getTotal(map), Integer.parseInt(page), 10, param.toString()));
		mav.addObject("mainPage", "foreground/blog/list.jsp");
		mav.addObject("pageTitle","Java开源博客系统");
		mav.setViewName("mainTemp");
		return mav;
	}
	

}
