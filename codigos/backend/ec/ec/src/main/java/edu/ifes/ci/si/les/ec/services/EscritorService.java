package edu.ifes.ci.si.les.ec.services;

import java.util.NoSuchElementException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.ifes.ci.si.les.ec.model.Escritor;
import edu.ifes.ci.si.les.ec.repositories.EscritorRepository;
import edu.ifes.ci.si.les.ec.services.exceptions.DataIntegrityException;
import edu.ifes.ci.si.les.ec.services.exceptions.ObjectNotFoundException;

@Service
public class EscritorService {
  @Autowired
  private EscritorRepository repository;

  public Escritor insert(Escritor obj) {
    obj.setId(null);
    try {
      return repository.save(obj);
    } catch(DataIntegrityException e) {
      throw new DataIntegrityException("Campo(s) obrigatório(s) do Escritor não foi(foram) preenchido(s).");
    }
  }

  public Escritor findById(Integer id) {
    try {
        Escritor obj = repository.findById(id).get();
        return obj;
      } catch (NoSuchElementException e) {
        throw new ObjectNotFoundException("Objeto não encontrado! Id: " + id + ", Tipo: " + Escritor.class.getName());
      }
  }
}
