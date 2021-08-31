package tw.com.finalproject.News.service;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tw.com.finalproject.News.dao.NewsDao;
import tw.com.finalproject.News.entity.News;
import tw.com.finalproject.Util.ImgConverter;

@Service
public class NewsService {

	@Autowired
	NewsDao newsDao;

	public List<News> findAllNews() {

		List<News> list = newsDao.findAll();
		for(int i=0 ; i < list.size(); i++) {
			try {
				String base64str = ImgConverter.ByteConvertToBase64(list.get(i).getImage());
				list.get(i).setBase64Image(base64str);				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return list;

	}

	/**
	 * 透過id查詢新聞
	 * 
	 * @param newsId
	 * @return
	 * @throws Exception
	 */
	public News findById(Integer newsId) throws Exception {
		
		Optional<News> result = newsDao.findById(newsId);
		
		if (!result.isPresent()) {
			throw new Exception();
		}
		
		byte[] bytes = result.get().getImage();
		String base64str = ImgConverter.ByteConvertToBase64(bytes);
		result.get().setBase64Image(base64str);
		return result.get();

	}

	/**
	 * 
	 * @param newsId
	 * @return
	 */
	public Integer deleteById(Integer newsId) {

		newsDao.deleteById(newsId);

		return newsId;

	}

	public News updateNews(News news) throws IOException {
		if (!news.getFile().isEmpty()) {
			byte[] bytes = ImgConverter.convertToBytesArrays(news.getFile());
			news.setImage(bytes);
			String base64 = ImgConverter.ByteConvertToBase64(bytes);
			news.setBase64Image(base64);
	}

		News result = newsDao.save(news);

		return result;

	}

	public News addNews(News news) throws IOException {
		if(!news.getFile().isEmpty()) {	
			news.setImage(ImgConverter.convertToBytesArrays(news.getFile()));
		}
		News result = newsDao.save(news);

		return result;

	}
	
	public List<News> findAllByUploadDateBetween(String startDate, String endDate){
		return newsDao.findAllByUploadDateBetween(startDate, endDate);
		
	}
}
