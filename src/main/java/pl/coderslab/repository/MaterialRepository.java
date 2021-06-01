package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.entity.Material;

@Repository
public interface MaterialRepository extends JpaRepository<Material, Long> {
}
