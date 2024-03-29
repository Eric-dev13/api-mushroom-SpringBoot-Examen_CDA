package com.api.mushroom.controller;


import com.api.mushroom.entity.MushroomEntity;
import com.api.mushroom.service.MushroomService;
import jakarta.persistence.EntityManager;
import lombok.RequiredArgsConstructor;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequiredArgsConstructor
//@CrossOrigin
@RequestMapping("api/v1/mushroom")
public class MushroomController {

    // Via l'annotation @RequiredArgsConstructor Lombok va génèrer un constructeur avec un paramètre pour chaque constante (final)
    private final MushroomService mushroomService;

    // GET - Liste des espèces validé par l'administrateur pour la publication.
    @GetMapping
    public List<MushroomEntity> findAllByVisibility() {
        return mushroomService.findAllByVisibility(true);
    }

    // GET - Affiche le descriptif d'une espèce
    @GetMapping("/{id}")
    public Optional<MushroomEntity> getById(@PathVariable("id") Long id) {
        return mushroomService.getById(id);
    }


    @GetMapping("/findBySlug/{slug}")
    public Optional<MushroomEntity> findBySlug(@PathVariable("slug") String slug) {
        return mushroomService.findBySlug(slug);
    }

}
