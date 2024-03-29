package com.api.mushroom.service.user;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.security.core.GrantedAuthority;

import java.time.LocalDateTime;
import java.util.Collection;
import java.util.Optional;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserServiceModel {
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;
    private String pseudo;
    private Collection<? extends GrantedAuthority> authorities;
    private String lastname;
    private String firstname;
    private String email;
    private Optional<String> filename;

    // PUT
    public UserServiceModel(String pseudo, String lastname, String firstname, Optional<String> filename) {
        this.pseudo = pseudo;
        this.lastname = lastname;
        this.firstname = firstname;
        this.filename = filename;
    }
}




