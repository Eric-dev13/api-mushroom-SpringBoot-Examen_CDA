package com.api.mushroom.controller.forum.mapper;

import com.api.mushroom.controller.forum.dto.ForumCommentaryDto;
import com.api.mushroom.controller.forum.dto.ForumSubjectDto;
import com.api.mushroom.entity.ForumCommentaryEntity;
import com.api.mushroom.entity.ForumSubjectEntity;
import org.mapstruct.*;

import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

@Mapper(unmappedTargetPolicy = ReportingPolicy.IGNORE, componentModel = MappingConstants.ComponentModel.SPRING)
public interface ForumSubjectEntityMapper {

    ForumSubjectEntity toEntity(ForumSubjectDto forumSubjectDto);

    @AfterMapping
    default void linkForumCommentaryEntities(@MappingTarget ForumSubjectEntity forumSubjectEntity) {
        forumSubjectEntity.getForumCommentaryEntities().forEach(forumCommentaryEntity -> forumCommentaryEntity.setForumSubjectEntity(forumSubjectEntity));
    }

    @Mappings({
        // mappe userEntity en ForumUserDto dont les 2 objet sont décris
        @Mapping(source = "userEntity", target = "user"),
        //@Mapping(source = "forumCommentaryEntities", target = "comments"),
        @Mapping(source = "forumCommentaryEntities", target = "comments", qualifiedByName = "filterCommentaryEntities")
    })
    ForumSubjectDto toDto(ForumSubjectEntity forumSubjectEntity);

    @BeanMapping(nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
    ForumSubjectEntity partialUpdate(ForumSubjectDto forumSubjectDto, @MappingTarget ForumSubjectEntity forumSubjectEntity);

    @Named("filterCommentaryEntities")
    default List<ForumCommentaryDto> filterCommentaryEntities(List<ForumCommentaryEntity> commentaryEntities) {
        if (commentaryEntities == null) {
            return Collections.emptyList();
        }

        return commentaryEntities.stream()
                .map(commentaryEntity -> mapCommentaryEntity(commentaryEntity))
                .collect(Collectors.toList());
    }

    @Mapping(source = "userEntity", target = "userCommentaryEditor")
    ForumCommentaryDto mapCommentaryEntity(ForumCommentaryEntity commentaryEntity);

}