package com.api.mushroom.entity;

import com.api.mushroom.security.Role;
import com.github.slugify.Slugify;
import jakarta.validation.constraints.Pattern;
import lombok.*;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.GrantedAuthority;

import jakarta.persistence.*;
import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.*;

@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "user")
public class UserEntity implements Serializable, UserDetails {

    /* ************************************* */
    /*      DECLARATION DES PROPRIETES       */
    /* ************************************* */

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // id auto-incrémente
    @Getter
    private Long id;

    @Getter
    @Column(name="created_at")
    private LocalDateTime createdAt;

    @Getter
    @Setter
    @Column(name="updated_at")
    private LocalDateTime updatedAt;

    @Setter
    @Column(name = "email", length = 255, unique = true)
    private String email;

    // @Pattern(regexp = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d).{8,}$", message = "Huit caractère au minimum, au moins une lettre majuscule et une lettre minuscule et un chiffre")
    @Setter
    @Column(name = "password", length = 255)
    private String password;

    @Getter
    @Setter
    @Enumerated(EnumType.STRING)
    private Role role;

    @Getter
    @Setter
    @Column(name = "pseudo", length = 255, nullable = false)
    private String pseudo;

    @Getter
    @Setter
    @Column(name = "lastname", length = 255)
    private String lastname;

    @Getter
    @Setter
    @Column(name = "firstname", length = 255)
    private String firstname;

    @Getter
    @Setter
    @Column(name = "filename", length = 255)
    private String filename;

    @Column(name = "is_verified")
    private Boolean isVerified;


    /* ******************************************** */
    /*          DECLARATION DES PROPRIETES          */
    /*           RELATIONS / ASSOCIATIONS           */
    /* ******************************************** */

    @Setter
    @OneToMany(mappedBy = "userEntity", orphanRemoval = true)
    private List<ForumSubjectEntity> forumSubjectEntities = new ArrayList<>();

    @Setter
    @Getter // ! redondant sans mapper dans un dto
    @OneToMany(mappedBy = "userEntity", orphanRemoval = true)
//    @OrderBy("order.createdAt.DESC")
    private List<ForumCommentaryEntity> forumCommentaryEntities = new ArrayList<>();



    /* *************************************** */
    /*             JPA PERSISTENCE             */
    /* *************************************** */

    // METHODES pour stocker automatiquement la date de création de l'enregistrement en de base de données.
    @PrePersist
    public void prePresist(){
        // stocker automatiquement la date de création de l'enregistrement en de base de données.
        this.createdAt = LocalDateTime.now();
    }

    // METHODES pour stocker automatiquement la date de mise à jour de l'enregistrement dans la base de données.
    @PreUpdate
    public void preUpdate() {
        this.updatedAt = LocalDateTime.now();
    }



    /* *************************************** */
    /*          IMPLEMENT USER DETAIL          */
    /* *************************************** */

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return List.of(new SimpleGrantedAuthority(role.name()));
    }

    @Override
    public String getPassword(){
        return password;
    }

    @Override
    public String getUsername(){
        return email;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }

    @Override
    public String toString() {
        return this.id + " : " + this.lastname + " " + this.firstname + " " + this.email;
    }


}
