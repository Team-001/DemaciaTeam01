package com.demacia.service.impl;

import com.demacia.domain.Project;
import com.demacia.mapper.ProjectDao;
import com.demacia.service.ProjectService;
import com.demacia.utils.UUIDUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by dllo on 18/3/3.
 */
@Service("projectService")
public class ProjectServiceImpl implements ProjectService {

    @Resource
    private ProjectDao projectDao;

    public Integer projectSubmit(Project project) {
        String projId  = UUIDUtil.randomID();
        project.setProjId(projId);
        return projectDao.projectSubmit(project);
    }
}
