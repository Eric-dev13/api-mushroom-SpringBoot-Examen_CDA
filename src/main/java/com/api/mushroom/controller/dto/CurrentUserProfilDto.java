package com.api.mushroom.controller.dto;


import org.springframework.security.core.GrantedAuthority;
import java.time.LocalDateTime;
import java.util.Collection;
import java.util.List;

public record CurrentUserProfilDto(
    Long id,
    LocalDateTime createdAt,
    LocalDateTime updatedAt,
    String email,
    String pseudo,
    String lastname,
    String firstname,
    Collection<? extends GrantedAuthority> authorities,
    String filename

) {}
