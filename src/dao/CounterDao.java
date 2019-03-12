package dao;

import model.Counter;
import model.Person;

public interface CounterDao {
	void create(Counter c);
	Counter get(int id);
	void update(Counter c);
}
