package dao;

import java.util.List;

import model.Person;

public interface PersonDao {
	void create(Person p);

	void update(Person p);
	
	void delete(int id);
	
	Person get(int id);
	
	Person getByUsername(String username);
	
	List<Person> search(String name);
}
