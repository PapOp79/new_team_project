package com.health.service;

import java.util.List;

import org.springframework.ui.Model;

import com.health.dto.commentDTO;

public interface CommentListService {
	public List<commentDTO> execute(Model model);
}