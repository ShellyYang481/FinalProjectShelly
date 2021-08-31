package tw.com.finalproject.Testdrive.Object;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@Transactional
public class TestdriveService {
	
	
	
	@Autowired
	private TestdriveRepository tdriveRepository;
	
	
	// 新增  create  post
	public Testdrive createTestdrive(Testdrive testdrive) {
		
		System.out.println(" Create 0 ");
		
		Testdrive result = tdriveRepository.save(testdrive);
		
		System.out.println(" Create 1 ");
		
		return result;
	}
	
	
	// 查詢單一  find 1   get 1
	public Testdrive findByIdTestdrive(String formId) {
		
		System.out.println(" Find 0 ");
		
		Optional<Testdrive> result = tdriveRepository.findById(formId);
		if (result.isEmpty()) {
			return null;
		}
		
		System.out.println("Find 1 Suc  ");
		
		return result.get();
	}
	
	
	// 查詢全部  find All   get All
	public List<Testdrive> findAllTestdrive() {
		
		System.out.println(" Find All 0  ");
		
		List<Testdrive> result = tdriveRepository.findAll();
		if (result.isEmpty()) {
			return null;
		}
		
		System.out.println("Find All 1 Suc  ");
		
		return result;
	}
	
	// 刪除   delete
	public boolean deleteByIdTestdrive(String formId) { 
		
		System.out.println(" Del 0  ");
		
		// 確認db有這筆資料
		Optional<Testdrive> result = tdriveRepository.findById(formId);
		if (result.isEmpty()) {
			return false;
		}

		System.out.println(" Del 1 found ");
		
		// 執行刪除
		tdriveRepository.deleteById(formId);
		//同上
		//tdriveRepository.deleteById(result.get().getFormId());
		
		System.out.println(" Del 2 Suc  ");
		return true;
	}

	
	//  修改   update    put
	public boolean updateTestdrive(Testdrive testdrive) {
		
		System.out.println(" Upd 0  ");
		
		// 確認db有這筆資料
		Optional<Testdrive> result = tdriveRepository.findById(testdrive.getFormId());
		if (result.isEmpty()) {
			return false;
		}
		
		System.out.println(" Upd 1 found ");
		
		// 執行修改
		Testdrive newTestdrive = result.get();
		newTestdrive = testdrive;
		try {
			tdriveRepository.saveAndFlush(newTestdrive);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		System.out.println(" Upd 2 Suc ");
		return true;
	}

	
}
