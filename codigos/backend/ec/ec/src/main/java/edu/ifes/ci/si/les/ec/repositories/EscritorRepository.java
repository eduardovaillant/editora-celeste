package edu.ifes.ci.si.les.ec.repositories;

import java.util.Collection;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.data.jpa.repository.Query;
import edu.ifes.ci.si.les.ec.model.Escritor;

@Repository
public interface EscritorRepository extends JpaRepository<Escritor, Integer> {  
  @Transactional(readOnly = true)
  @Query(value = "select e.*, avg(av.nota) from escritor e inner join livro l on l.escritor_id = e.id inner join avaliacao av on l.id = av.livro_id group by e.id order by avg(av.nota) asc limit 3;", nativeQuery = true)
	public Collection<Escritor> melhores();
}
/*



select l.*, AVG(av.nota) from livro l
	inner join escritor e on e.id = l.escritor_id
	inner join avaliacao av on l.id = av.livro_id   
	where e.id = 3
	group by l.id
   	order by avg(av.nota) asc
	  limit 3;

*/