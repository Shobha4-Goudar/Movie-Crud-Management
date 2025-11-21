package moviecrud.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import jakarta.servlet.http.HttpSession;
import moviecrud.dao.MovieDao;
import moviecrud.entity.Movie;

@Controller
public class MovieController {
	@Autowired
	MovieDao dao;

	@GetMapping("/")
	public String loadMain() {
		return "main.jsp";
	}

	@GetMapping("/add")
	public String loadAdd() {
		return "add.jsp";
	}

	@PostMapping("/add")
	public String add(@ModelAttribute Movie movie, RedirectAttributes attributes) {
		attributes.addFlashAttribute("message", "Record Added Success");
		dao.save(movie);
		return "redirect:/";
	}

	@GetMapping("/view")
	public String ViewAll(ModelMap map) {
		List<Movie> movies = dao.getMovies();
		map.put("movies", movies);
		return "view.jsp";
	}

	@GetMapping("/delete")
	public String delete(@RequestParam("id") int id, RedirectAttributes attributes) {
		dao.delete(id);
		attributes.addFlashAttribute("message", "Record Deleted Success");
		return "redirect:/view";
	}

	@GetMapping("/edit")
	public String edit(@RequestParam("id") int id, ModelMap map) {
		Movie movie = dao.findById(id);
		map.put("movie", movie);
		return "edit.jsp";
	}

	@PostMapping("/update")
	public String update(@ModelAttribute Movie movie, RedirectAttributes attributes) {
		dao.update(movie);
		attributes.addFlashAttribute("message", "Record Updated Success");
		return "redirect:/view";
	}
}
