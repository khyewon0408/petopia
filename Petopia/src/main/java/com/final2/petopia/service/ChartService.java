package com.final2.petopia.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.final2.petopia.model.ChartDAO;
import com.final2.petopia.model.ChartVO;
import com.google.api.services.calendar.Calendar.CalendarList.List;

@Service
public class ChartService {
	// ===== #34. 의존 객체 주입하기 (DIL Dependency Injection) =====
		@Autowired
		private ChartDAO dao;

		
}
