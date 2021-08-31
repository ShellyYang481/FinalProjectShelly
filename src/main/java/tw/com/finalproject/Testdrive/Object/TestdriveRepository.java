package tw.com.finalproject.Testdrive.Object;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
public interface TestdriveRepository extends JpaRepository<Testdrive, String> {

}
