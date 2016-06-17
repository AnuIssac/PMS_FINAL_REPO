package org.crce.interns.dao.impl;


import org.hibernate.SessionFactory;
import org.hibernate.exception.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Repository;

import org.crce.interns.model.*;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.crce.interns.beans.CompanyBean;
import org.crce.interns.dao.*;
@Repository("companyDao")
public class CompanyDaoImpl implements CompanyDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	public void addCriteria(Criteria criteria) {
		try{
		System.out.println("In DAO CRITERIA");
		System.out.println(criteria.getCgpa());
			sessionFactory.getCurrentSession().saveOrUpdate(criteria);
		
			System.out.println("in dao criteria after");
		}
		

		catch (ConstraintViolationException e) {
			System.out.println("error");
			
		}
		catch(DataIntegrityViolationException e){
			System.out.println("error");
			
		}	

	}
	
public void addCompany(String user,Company company) {
		
		try{
			
			Date dNow = new Date( );
			SimpleDateFormat ft = 
				      new SimpleDateFormat ("yyyy-MM-dd");
			String temp = ft.format(dNow);
			//Date parsed = ft.parse(temp);
			System.out.println(temp);
			String year =  Integer.toString(Calendar.getInstance().get(Calendar.YEAR)+1);
			 
			company.setCreatedDate(dNow);
			company.setCreatedBy(user);
			company.setYear(year);
			
			
			
			sessionFactory.getCurrentSession().save(company);
			
			}
		catch (ConstraintViolationException e) {
			System.out.println("error1");
		}
	 
	   catch(DataIntegrityViolationException e){
		   System.out.println("error2");
			
	   }	
	}
	
	@SuppressWarnings("unchecked")
	public List<Company> getCompany() {  
		  return (List<Company>) sessionFactory.getCurrentSession().createCriteria(Company.class).list();  
		 }

	//why is this empty!!!? so much error in this module ! 
	/*@Override
	public void addCompany(Company company) {
		// TODO Auto-generated method stub
		
	}  */
	}
