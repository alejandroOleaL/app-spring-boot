package com.bolsadeideas.springboot.app.controllers;

import java.io.IOException;
import java.net.MalformedURLException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Map;
import java.util.Optional;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bolsadeideas.springboot.app.models.dao.IProductoDao;
import com.bolsadeideas.springboot.app.models.entity.Producto;
import com.bolsadeideas.springboot.app.models.service.IUploadFileService;
import com.bolsadeideas.springboot.app.util.paginator.PageRender;

@Controller
@SessionAttributes("producto")
public class ProductoController {
	
	@Autowired
	private IProductoDao productoDao;
	
	@GetMapping(value="/producto/ver/{id}")
	public String ver(@PathVariable(value="id") Long id, Map<String, Object> model, RedirectAttributes flash) {
		
		Producto producto = productoDao.findOne(id);
		
		if(producto==null) {
			flash.addAttribute("error", "El producto no existe en la base de datos");
			return "redirect:/listar-productos";
		}
		
		model.put("producto", producto);
		model.put("titulo", "Detalle del producto");
		
		return "producto/ver";		
	}
	
	@RequestMapping(value = "/listar-productos", method=RequestMethod.GET)
	public String listar(@RequestParam(name="page", defaultValue="0") int page, Model model) {
		
		Pageable pageRequest = PageRequest.of(page, 4);
		
		Page<Producto> productos = productoDao.findAll(pageRequest);
		
		PageRender<Producto> pageRender = new PageRender<>("/listar-productos", productos);
		model.addAttribute("titulo", "Listado de Productos");
		model.addAttribute("productos", productos);
		model.addAttribute("page", pageRender);
		return "listar-productos";
	}
	
	@RequestMapping(value="/producto/form-producto")
	public String crear(Map<String, Object> model) {
		
		Producto producto = new Producto();
		model.put("producto", producto);
		model.put("titulo", "Formulario Producto");
		return "producto/form-producto";
	}
	
	@RequestMapping(value="/producto/form-producto", method=RequestMethod.POST)
	public String guardar(Producto producto, SessionStatus status, RedirectAttributes flash) {
		
		String mensajeFlash = (producto.getId() != null)? "Producto editado con éxito!" : "Producto agregado!";
		
		productoDao.save(producto);
		status.setComplete();
		flash.addFlashAttribute("success", mensajeFlash);
		return "redirect:../listar-productos";
	}
	
	@RequestMapping(value="/producto/form-producto/{id}")
	public String editar(@PathVariable(value="id") Long id, Map<String, Object> model) {
		
		Optional<Producto> producto = null;
		
		if(id > 0) {
			producto = productoDao.findById(id);
		} else {
			return "redirect:../listar-productos";
		}
		model.put("producto", producto);
		model.put("titulo", "Editar Producto!");
		return "producto/form-producto";
		
	}
	
	@RequestMapping(value="/eliminar/producto/{id}")
	public String eliminar(@PathVariable(value="id") Long id) {
		
		if(id > 0) {
			productoDao.deleteById(id);
			
		}
		return "redirect:../listar-productos";
	}
	

}
