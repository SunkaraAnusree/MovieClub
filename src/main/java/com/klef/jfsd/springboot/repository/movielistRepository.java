package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Movielist;

@Repository
public interface movielistRepository extends CrudRepository<Movielist, Integer>
{
	@Query("from Movielist m where m.category=?1")
	public List<Movielist> viewallmoviesbycategory(String category);
}
