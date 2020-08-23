package service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import com.iiht.evaluation.coronokit.model.ProductMaster;

public class KitProduct {
	
	public static List<ProductMaster> list = new ArrayList<ProductMaster>();
		
	public List<ProductMaster> addProductToKit( ProductMaster pm) {
		List<ProductMaster> pmList = list.stream().filter((p)-> p.getId() == pm.getId()).collect(Collectors.toList());
		if(pmList.size() > 0 ) {
			list=list.stream().filter((p)-> p.getId() != pm.getId()).collect(Collectors.toList());
			for(ProductMaster p : pmList){
				pm.setQuantity(pm.getQuantity() +1)  ;
			}
			pm.setCost(String.valueOf(pm.getQuantity() * Integer.parseInt(pm.getCost())));
		}
		list.add(pm);
		return list;
	}
	public List<ProductMaster> getKitDetials() {
		return list;
	}
	public List<ProductMaster> deleteItem(int id) {
		list=list.stream().filter((p)-> p.getId() != id).collect(Collectors.toList());
		return list;
	}

	public String getTotalCost(){
		return String.valueOf(list.stream().mapToInt(o -> Integer.parseInt(o.getCost())).sum());
	}
	
}

