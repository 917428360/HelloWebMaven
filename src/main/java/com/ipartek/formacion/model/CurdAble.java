package com.ipartek.formacion.model;

import java.util.List;


/**
 * Declara las operaciones basicas de CRUD
 * <ul>
 * 	<li>Create
 *  <li>Read
 *  <li>Update
 *  <li>Delete
 * </ul>
 * @author Curso
 *
 */
public interface CurdAble<P> {

	boolean create(P pojo);
	
	List<P> getAll();
	P getById(long id);
	
	boolean update(P pojo);
	
	boolean delete(long id);	
	
}