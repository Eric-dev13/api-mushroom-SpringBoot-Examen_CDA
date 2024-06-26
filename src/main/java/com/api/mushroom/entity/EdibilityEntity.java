package com.api.mushroom.entity;

import com.github.slugify.Slugify;
import jakarta.persistence.*;
import lombok.Data;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@Entity
@Data
@Table(name = "edibility")
public class EdibilityEntity {

    /* ************************************* */
    /*      DECLARATION DES PROPRIETES       */
    /* ************************************* */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // id auto-incrémente
    private Long id;

    @Column(name="created_at")
    private LocalDateTime createdAt;

    @Column(name="name")
    private String name;

    @Column(name="filename")
    private String filename;

    @PrePersist
    public void prePresist() {
        this.createdAt = LocalDateTime.now();
    }

}
