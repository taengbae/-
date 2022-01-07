package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();

	public static ProductRepository getInstance(){
		return instance;
	} 


	public ProductRepository() {
		Product p1 = new Product("P0001", "폼폼푸린 크리스마스 인형", 32800);
		p1.setDescription("두근두근♪ 춤이 절로 나오는 메리 크리스마스 ☆\r\n"
				+ "산타의 의상으로 귀여움 한도초과 ★ 가방이나 배낭에 달고 외출에 딱♪");
		p1.setCategory("doll");
		p1.setManufacturer("Sanrio");
		p1.setUnitsInStock(5);
		p1.setCondition("New");
		p1.setFilename("P0001.jpg");

		Product p2 = new Product("P0002", "폼폼푸린 라테쿠마 페이스 미니 파우치", 24200);
		p2.setDescription("이상한 숲의 카페에 오시지 마세요 ☆\r\n"
				+ "라떼 아트에 도전했더니 카라멜 라떼 색의 라테쿠마가 되어 버렸다 ★ 이어폰 등의 소품을 넣는데 딱♪");
		p2.setCategory("pouch");
		p2.setManufacturer("Sanrio");
		p2.setUnitsInStock(3);
		p2.setCondition("New");
		p2.setFilename("P0002.jpg");

		Product p3 = new Product("P0003", "포챠코 크리스마스 인형", 32800);
		p3.setDescription("두근두근♪ 춤이 절로 나오는 메리 크리스마스 ☆\r\n"
				+ "산타의 의상으로 귀여움 한도초과 ★ 가방이나 배낭에 달고 외출에 딱♪");
		p3.setCategory("doll");
		p3.setManufacturer("Sanrio");
		p3.setUnitsInStock(10);
		p3.setCondition("New");
		p3.setFilename("P0003.jpg");
		
		Product p4 = new Product("P0004", "스누피 기본 인형", 25000);
		p4.setDescription("스누피 마을에서 길을 잃어버린 스누피를 분양해줄사람 찾아요 ★ ");
		p4.setCategory("doll");
		p4.setManufacturer("Peanuts");
		p4.setUnitsInStock(1);
		p4.setCondition("New");
		p4.setFilename("P0004.JPG");
		
		Product p5 = new Product("P0005", "밥 애착인형 팀 가방 고리", 5000);
		p5.setDescription("미니언즈 밥이 항상 데리고 다니는 팀 ☆\r\n"
				+ "밥이 잃어버린 팀인형 하나 팔아요♪");
		p5.setCategory("doll");
		p5.setManufacturer("Minions");
		p5.setUnitsInStock(1);
		p5.setCondition("Old");
		p5.setFilename("P0005.JPG");

		listOfProducts.add(p1);
		listOfProducts.add(p2);
		listOfProducts.add(p3);
		listOfProducts.add(p4);
		listOfProducts.add(p5);
		
	}

	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
	
	public Product getProductById(String productId) {
		Product productById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
	
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}
}