package com.uca.capas.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.uca.capas.classes.Producto;


@Controller
public class MainController {
	
	@RequestMapping("/")
	public ModelAndView initMain() {		
		ModelAndView mav = new ModelAndView();			
		Producto producto = new Producto();
	
		mav.addObject("producto", producto);
		
		mav.setViewName("main");	
		
		return mav;
	}
	
	@RequestMapping("/form-data")	
	public ModelAndView formData(@Valid @ModelAttribute Producto producto, BindingResult result) {		
		ModelAndView mav = new ModelAndView();
		if(result.hasErrors()) {
			mav.setViewName("main");
		}
		else {
			mav.addObject("producto", producto);
			mav.addObject("message", "Producto ingresado");
			mav.setViewName("success");
		}
				
		return mav;
	}	
	
}
