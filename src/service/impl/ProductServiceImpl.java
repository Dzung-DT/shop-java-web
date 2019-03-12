package service.impl;

import java.util.List;

import dao.ProductDao;
import dao.impl.ProductDaoImpl;
import model.Product;
import service.ProductService;

public class ProductServiceImpl implements ProductService{
	ProductDao productDao = new ProductDaoImpl();
	@Override
	public void create(Product p) {
		//goi ham doi tuong create
		productDao.create(p);
		
	}

	@Override
	public void update(Product p) {
		productDao.update(p);
	}

	@Override
	public void delete(int id) {
		productDao.delete(id);
		
	}

	@Override
	public Product get(int id) {
		return productDao.get(id);
	}

	@Override
	public List<Product> search(String name) {
		return productDao.search(name);
	}	
	
	@Override
	public List<Product> seachByCategory(int cate_id) {
		return productDao.seachByCategory(cate_id);
	}
}
