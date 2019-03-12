package service.impl;

import java.util.List;

import dao.PersonDao;
import dao.impl.PersonDaoImpl;
import model.Person;
import service.PersonService;

public class PersonServiceImpl implements PersonService {
	//tao doi tuong personDao
	PersonDao personDao = new PersonDaoImpl();
	@Override
	public void create(Person p) {
		//goi ham doi tuong create
		personDao.create(p);
		
	}

	@Override
	public void update(Person newUser) {
		Person oldUser = personDao.get(newUser.getId());
		if(oldUser!=null) {
			oldUser.setName(newUser.getName());
			///.....
			if(newUser.getAvatarFileName() != null) {
				oldUser.setAvatarFileName(newUser.getAvatarFileName());
			}
		}
		personDao.update(oldUser);
	}

	@Override
	public void delete(int id) {
		personDao.delete(id);
		
	}

	@Override
	public Person get(int id) {
		return personDao.get(id);
	}

	@Override
	public List<Person> search(String name) {
		return personDao.search(name);
	}

	@Override
	public Person login(String username, String password) {
		Person person = personDao.getByUsername(username);
		if (person != null) {
			if (person.getPassword().equals(password)) {
				return person;
			}
		}
		return null;
	}
	
}
