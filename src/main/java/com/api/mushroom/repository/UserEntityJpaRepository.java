package com.api.mushroom.repository;

import com.api.mushroom.entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserEntityJpaRepository extends JpaRepository<UserEntity, Long> {
    Optional<UserEntity>findByEmail(String email);
    /*
    @Query(" select u from UserEntity u " +
            " where u.username = ?1")
    Optional<UserEntity> findUserWithName(String username);
     */
}