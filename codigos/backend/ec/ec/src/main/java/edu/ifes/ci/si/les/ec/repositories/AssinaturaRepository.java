package edu.ifes.ci.si.les.ec.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import edu.ifes.ci.si.les.ec.model.Assinatura;

@Repository
public interface AssinaturaRepository extends JpaRepository<Assinatura, Integer> {  
  @Transactional(readOnly = true)
  public Collection<Assinatura> findByUsuarioId(Integer livro_id);
}

