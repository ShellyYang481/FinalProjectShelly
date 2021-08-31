package tw.com.finalproject.Account.Object;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
public interface ClientRepository extends JpaRepository<Client, String> {

	public Optional<Client> findByClientEmail(String clientEmail);
}
