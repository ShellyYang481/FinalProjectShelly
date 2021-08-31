package tw.com.finalproject.Employee.Object;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class ClientInnerService {

	@Autowired
	private ClientInnerRepository clientInnerRepository;

	public ClientInner getUniqueClientInner(String clientID) {
		Optional<ClientInner> result = clientInnerRepository.findById(clientID);
		if (result.isEmpty()) {
			return null;
		}
		return result.get();
	}

	public List<ClientInner> getClientForEmp(Employee queryEmp) {
		List<ClientInner> result = clientInnerRepository.findByInchargeEmployee(queryEmp);
		return result;
	}

	public List<ClientInner> getQueryName(String queryString) {
		List<ClientInner> result = clientInnerRepository.findByfullNameContains(queryString);
		return result;
	}

	public String updateClientInnerStage(ClientInner newClient) {
		Optional<ClientInner> result = clientInnerRepository.findById(newClient.getId());
		if (result.isEmpty()) {
			return "fail";
		}
		try {
			ClientInner oldClient = result.get();
			oldClient.setSaleStage(newClient.getSaleStage());
			clientInnerRepository.saveAndFlush(oldClient);
			return "ok";
		} catch (Exception e) {
			return "fail";
		}
	}
	
	public String updateClientInnerInfo(ClientInner newClientInner) {
		Optional<ClientInner> resultQuery = clientInnerRepository.findById(newClientInner.getId());
		if (resultQuery.isEmpty()) {
			return "fail";
		}
		try {
			ClientInner oldClientInner = resultQuery.get();
			oldClientInner.setFullName(newClientInner.getFullName());
			oldClientInner.setPhone(newClientInner.getPhone());
			oldClientInner.setCity(newClientInner.getCity());
			oldClientInner.setTown(newClientInner.getTown());
			oldClientInner.setFullAddress(newClientInner.getFullAddress());
			oldClientInner.setInchargeEmployee(newClientInner.getInchargeEmployee());
			clientInnerRepository.saveAndFlush(oldClientInner);
			return "ok";		
		} catch (Exception e) {
			return "fail";
		}
	}
}
