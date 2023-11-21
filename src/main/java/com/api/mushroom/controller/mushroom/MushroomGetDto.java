package com.api.mushroom.controller.mushroom;


import com.api.mushroom.controller.Edibility.EdibilityDto;
import com.api.mushroom.controller.Localname.LocalnameDto;
import com.api.mushroom.controller.Media.MediaDto;
import com.api.mushroom.controller.lamellaType.LamellatypeDto;

import java.time.LocalDateTime;
import java.util.List;

public record MushroomGetDto(
     Long id,
     LocalDateTime createdAt,
     LocalDateTime updatedAt,
     boolean visibility,
     String commonname,
     String latinname,
     String flesh,
     String hat,
     String lamella,
     String foot,
     String habitat,
     String comment,
     String slug,
     LamellatypeDto lamellatype,
     EdibilityDto edibility,
     List<LocalnameDto> localnames,
     List<MediaDto> medias
    ){}
