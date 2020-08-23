package service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

import com.iiht.evaluation.coronokit.model.ProductMaster;

public class ListAllProducts {
	
	public static List<ProductMaster> list;
	
	public ListAllProducts() {
		ProductMaster m1= new ProductMaster(1, "Mask" ,"10","Face Mask");
		ProductMaster m2= new ProductMaster(2, "Sanitizer" ,"20","Hand Sanitizer");
		ProductMaster m3= new ProductMaster(3, "PPE Kit" ,"30","PPE Kit");
		ProductMaster m4= new ProductMaster(4, "FaceShield" ,"40","FaceShield");
		list = new ArrayList<ProductMaster>();
		list.add(m1);
		list.add(m2);
		list.add(m3);
		list.add(m4);
	}
	
	public List<ProductMaster> getlistallproducts() {
		return list;
	}
	
	public List<ProductMaster> addNewProduct(int id, String productName, String cost, String desc ) {
		List<ProductMaster> pmList = list.stream().filter((p)-> p.getId() == id).collect(Collectors.toList());
		if(pmList.size() > 0){
			ProductMaster pm = pmList.get(0);
			list = list.stream().filter((p)-> p.getId() != id).collect(Collectors.toList());
		}
		ProductMaster m1= new ProductMaster(id, productName ,cost, desc);
		list.add(m1);
		return list;
	}
	
	public ProductMaster searchProduct(int id) {
		List<ProductMaster> pmList = list.stream().filter((p)-> p.getId() == id).collect(Collectors.toList());
		return pmList.get(0);
	}
}
