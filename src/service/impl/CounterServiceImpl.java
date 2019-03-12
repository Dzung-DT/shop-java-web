package service.impl;

import java.util.List;

import dao.CounterDao;
import dao.impl.CounterDaoImpl;
import model.Counter;
import model.Person;
import service.CounterService;

public class CounterServiceImpl implements CounterService{
	CounterDao counterDao = new CounterDaoImpl();

	@Override
	public void create(Counter c) {
		//goi ham doi tuong create
		counterDao.create(c);
		
	}

	@Override
	public void update(Counter c) {
		counterDao.update(c);
	}

	@Override
	public Counter get(int id) {
		return counterDao.get(id);
	}
}
