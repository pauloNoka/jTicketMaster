package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import javax.persistence.Query;

import models.TKFuncionarios;


public class LoginDao {
	
	private EntityManager manager;
	
	public LoginDao() {
		
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("Connection");
		manager = factory.createEntityManager();
	}
	
	public boolean CheckLogin(String Usuario, String Senha){
		
		Query query = manager.createNamedQuery("Login.findAll");
		List <TKFuncionarios> login = query.getResultList();
		
		/*session.beginTransaction();
        
		Query q = session.createQuery("Select u from tkfuncionarios u");
		
		List<?> result = q.list();
		
		session.getTransaction().commit();
		
		for (int i = 0; i < result.size(); i++) {
            Login login = (Login) result.get(i);
            System.out.println("Login: " + login.getUsuario());
        }*/
		
		return false;
	
	}
	
}