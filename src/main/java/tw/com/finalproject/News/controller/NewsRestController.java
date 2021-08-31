package tw.com.finalproject.News.controller;



import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import tw.com.finalproject.News.entity.News;
import tw.com.finalproject.News.service.NewsService;
import tw.com.finalproject.Util.ImgConverter;



@RestController
public class NewsRestController {
	
	@Autowired
	private NewsService newsService;
	
	
	@GetMapping("/getAllNews")
	public List<News> getAllNews(){
		
		return newsService.findAllNews();
	}
	
	@GetMapping("/findNewsById/{newsId}")
	public News findNewsById(@PathVariable Integer newsId) throws Exception {
		
		
		return newsService.findById(newsId);
		
	}
	
	@PostMapping(path = "/addNews", produces = "text/plain;charset=UTF-8")
	public String addNews(News news) throws IOException {
	 newsService.addNews(news);
	 return "success";
		
	}
	
	@PostMapping("/deleteNewsById/{newsId}")
	public Map<String,String> deleteNewsById(@PathVariable Integer newsId) {
		
		Map<String,String> map = new HashMap<String,String>();
		
		Integer result = newsService.deleteById(newsId);
		map.put("msg","成功刪除id:"+result );
		
		
		return map;
		
	}
	
	@PostMapping(path = "/updateNews", produces = "text/plain;charset=UTF-8")
	public String updateNews(News news) throws Exception {
		newsService.updateNews(news);
		
		 return "success";
		
	}
	
	@GetMapping("/sortByUploadDate/{startDate}/{endDate}")
	public List<News> sortNewsByUploadDate(@PathVariable String startDate, @PathVariable String endDate){
		return newsService.findAllByUploadDateBetween(startDate, endDate);
	}

}
