package com.user.mngmnt.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.user.mngmnt.model.User;

import java.util.List;
import java.util.Optional;

@Repository("userRepository")
public interface UserRepository extends JpaRepository<User, Long> {
	
    User findByEmail(String email);

    List<User> findByNomIgnoreCaseContaining(String nom);

    List<User> findByMatriculeIgnoreCaseContaining(String matricule);

    List<User> findByEmailIgnoreCaseContaining(String email);

    @Query("SELECT t FROM User t WHERE " +
            "LOWER(t.matricule) LIKE LOWER(CONCAT('%',:searchTerm, '%')) OR " +
            "LOWER(t.nom) LIKE LOWER(CONCAT('%',:searchTerm, '%'))")
    Page<User> searchByTerm(@Param("searchTerm") String searchTerm, Pageable pageable);
}
