package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.query.Query;

import com.pojo.SubjectTeacher;


public class SubjectTeacherDAO {
	
	Session session;
	StandardServiceRegistry ssr;
	Metadata md;
	SessionFactory sf;
	Transaction tran ;
	
	
	
	public String insert(SubjectTeacher cc) {
		hibConn();

		int r = (int) session.save(cc);

		if (r > 0) {
			close();
			return "data inserted";
		} else {
			close();
			return "data not inserted";
		}
		
	
	}
	
	
public	List<SubjectTeacher> getAllData(int id){
		hibConn();
		Query q=session.createQuery("from SubjectTeacher where cid="+id);

		
		tran.commit();
		return q.list();
	}
public String delete(int id) {
	hibConn();

	System.out.print("id" + id);
	SubjectTeacher myObject = (SubjectTeacher) session.load(SubjectTeacher.class, id);
	session.delete(myObject);
	
	session.flush();
	close();
	return "deleted";
}
	
	public void hibConn() {

		 ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
		
		 md = new MetadataSources(ssr).getMetadataBuilder().build();
	
		 sf = md.getSessionFactoryBuilder().build();
	
	  	session = sf.openSession();
	
		 tran = session.beginTransaction();

		 
		
		
	}
	
	public void close() {
		tran.commit();
		session.close();
		sf.close();
	}

}


