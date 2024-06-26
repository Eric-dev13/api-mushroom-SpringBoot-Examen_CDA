package com.api.mushroom.controller.user;

import com.api.mushroom.Mapper.MapStructMapper;
import com.api.mushroom.controller.dto.*;
import com.api.mushroom.service.model.*;
import com.api.mushroom.service.user.CurrentUserService;
import com.api.mushroom.service.utils.FileUploadService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import java.io.IOException;
import java.util.Optional;


@RequiredArgsConstructor
@RestController
@RequestMapping(value = "api/v1/current-user")
public class CurrentUserController {

    // Lombok va génèrer un constructeur avec un paramètre pour chaque constante (final)
    private final CurrentUserService currentUserService;
    private final FileUploadService fileUploadService;
    private final MapStructMapper mapStructMapper;


    // Récupération du profil de l'utilisateur courant
    @GetMapping
    public ResponseEntity<CurrentUserProfilDto> getCurrentUser() {
        // Récupère l'utilisateur courant
        UserServiceModel userServiceModel = currentUserService.getCurrentUser();

        if (userServiceModel == null) {
            // Si userServiceModel est null, renvoyer une ResponseEntity avec un code 404 Not Found
            return ResponseEntity.notFound().build();
        }

        // MAPPAGE AVEC MapStruct
        CurrentUserProfilDto currentUserProfilDto = mapStructMapper.userServiceModelToUserProfilDto(userServiceModel);

        // Créer et renvoyer une ResponseEntity avec le UserGetDTO en tant que corps
        return ResponseEntity.ok(currentUserProfilDto);

    }

    // Modification du profil de l'utilisateur courant
    @PutMapping("/{userId}")
    public ResponseEntity<UserSessionStorageDTO> updateCurrentUser(@PathVariable("userId") Long id,
                                                                   @RequestParam(name = "pseudo",  required = true) String pseudo,
                                                                   @RequestParam(name = "lastname", required = true) String lastname,
                                                                   @RequestParam(name = "firstname", required = true) String firstname,
                                                                   @RequestPart(name = "filename", required = false) Optional<MultipartFile> filename
    ) throws IOException {
        String newFilename = "";

        if (filename.isPresent()) {
            // Télécharger le fichier de média et obtient le nouveau nom de fichier
            newFilename = fileUploadService.fileUpload(filename.get(), "users/");
        }

        CurrentUserUpdateDto currentUserUpdateDto = new CurrentUserUpdateDto(
                pseudo,
                lastname,
                firstname,
                newFilename);

        // Mapping dto -> serviceModel
        UserServiceModel userServiceModel = mapStructMapper.currentUserUpdateDtoToUserServiceModel(currentUserUpdateDto);

        // Persistence DB
        UserServiceModel userServiceModelPersist = currentUserService.updateCurrentUser(userServiceModel);

        // Mapping serviceModel -> dto
        UserSessionStorageDTO userSessionStorageDTO = mapStructMapper.userServiceModelToUserSessionStorageDto(userServiceModelPersist);

        return ResponseEntity.ok(userSessionStorageDTO) ;
    }

    @PutMapping("/password/change")
    public boolean updatePassword(@Valid @RequestBody CurrentUserChangePasswordDto currentUserChangePasswordDto){

        ChangePasswordServiceModel changePasswordServiceModel = mapStructMapper.changePasswordDtoToChangePasswordServiceModel(currentUserChangePasswordDto);

        return currentUserService.updatePassword(changePasswordServiceModel);

    }

//    @GetMapping("/sujets")
//    public ResponseEntity<List<ForumSubjectDto>> findAllSubjectsByUser() {
//        List<ForumSubjectFullServiceModel> forumSubjectFullServiceModels = currentUserService.getFullCurrentUser();
//
//        return ResponseEntity.ok(userDtoMapper.forumSubjectFullServiceModelsToForumSubjectDtos(forumSubjectFullServiceModels));
//    }

}
