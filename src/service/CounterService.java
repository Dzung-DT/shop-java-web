package service;

import model.Counter;
import model.Person;

public interface CounterService {
	void create(Counter c);
	Counter get(int id);
	void update(Counter c);
}
