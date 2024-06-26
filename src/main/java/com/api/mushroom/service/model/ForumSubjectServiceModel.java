package com.api.mushroom.service.model;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;


@Data
@NoArgsConstructor
public class ForumSubjectServiceModel {
    private Long id;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;
    private String title;
    private String description;
    private UserServiceModel user;
    private List<Long> categoriesId;
    private List<ForumCategoryServiceModel> forumCategories;
    private List<ForumCommentaryServiceModel> forumCommentaries;
}
