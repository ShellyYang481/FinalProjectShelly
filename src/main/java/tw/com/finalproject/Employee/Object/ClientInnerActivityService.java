package tw.com.finalproject.Employee.Object;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ClientInnerActivityService {

	@Autowired
	private ClientInnerActivityRepository clientInnerActivityRepository;

	public ClientInnerActivity insertActivity(ClientInnerActivity activity) {
		ClientInnerActivity result = clientInnerActivityRepository.save(activity);
		return result;
	}
	
	public List<ClientInnerActivity> queryActivityFromClient(ClientInner client){
		List<ClientInnerActivity> findByClientInner = clientInnerActivityRepository.findByClientInnerOrderByCurDateDesc(client);
		return findByClientInner;
	}

}
