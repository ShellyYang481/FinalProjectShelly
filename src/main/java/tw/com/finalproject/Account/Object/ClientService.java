package tw.com.finalproject.Account.Object;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.com.finalproject.Util.Util;

@Service
@Transactional
public class ClientService {

	@Autowired
	private ClientRepository clientRepository;

	// Find if client id exits
	public boolean isClientIDExits(String id) {
		Optional<Client> result = clientRepository.findById(id);
		if (result.isEmpty()) {
			return false;
		}
		return true;
	}

	// Insert client into DB
	public Client createClient(Client curClient) {
		Client result = clientRepository.save(curClient);
		return result;
	}

	// Login check
	public Client clientLoginCheck(String email, String passwd) {
		if (isEmailExits(email)) {
			String correctPasswd = getClientPasswd(email);
			if (passwd != null & Util.passwordCheck(passwd, correctPasswd)) {
				String clientUUID = getClientIDByEmail(email);
				Client resultClient = getAccountInfo(clientUUID);
				return resultClient;
			}
		}
		return null;
	}

	public Client getAccountInfo(String clientUUID) {
		Optional<Client> result = clientRepository.findById(clientUUID);
		if (result.isEmpty()) {
			return null;
		}
		return result.get();
	}

	public String getClientIDByEmail(String email) {
		Optional<Client> result = clientRepository.findByClientEmail(email);
		if (result.isEmpty()) {
			return null;
		}
		return result.get().getId();
	}

	public String getClientPasswd(String email) {
		Optional<Client> result = clientRepository.findByClientEmail(email);
		if (result.isEmpty()) {
			return null;
		}
		return result.get().getPasswd();
	}

	public boolean isEmailExits(String email) {
		Optional<Client> result = clientRepository.findByClientEmail(email);
		if (result.isEmpty()) {
			return false;
		}
		return true;
	}

	public boolean modifyClientPassword(Client curClient) {
		Optional<Client> result = clientRepository.findById(curClient.getId());
		if (result.isEmpty()) {
			return false;
		}
		Client newClient = result.get();
		newClient.setPasswd(curClient.getPasswd());
		try {
			clientRepository.saveAndFlush(newClient);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	public boolean modifyClientProfile(Client curClient) {
		Optional<Client> result = clientRepository.findById(curClient.getId());
		if (result.isEmpty()) {
			return false;
		}
		Client newClient = result.get();
		newClient = curClient;
		try {
			clientRepository.saveAndFlush(newClient);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
}
