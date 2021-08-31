package tw.com.finalproject.News.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import tw.com.finalproject.News.entity.News;

public interface NewsDao extends JpaRepository<News, Integer> {

	List<News> findAllByUploadDateBetween(String startDate, String endDate);

}
