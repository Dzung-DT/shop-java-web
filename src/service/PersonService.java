package service;

import java.util.List;

import model.Person;

public interface PersonService {
	void create(Person p);

	void update(Person p);

	void delete(int id);
	
	Person get(int id);
	
	Person login(String username, String password);
	
	List<Person> search(String name);
}
