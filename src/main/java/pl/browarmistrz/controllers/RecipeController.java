package pl.browarmistrz.controllers;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import pl.browarmistrz.dao.MaltDAO;
import pl.browarmistrz.dao.RecipeDAO;
import pl.browarmistrz.entities.Malt;
import pl.browarmistrz.entities.Recipe;

@Controller
@RequestMapping("/recipe")
public class RecipeController {

	@Autowired
	private RecipeDAO recipeDAO;
	
	@Autowired
	private MaltDAO maltDAO;

	@RequestMapping(value = "/addrecipe", method = RequestMethod.GET)
	public String showRegistrationForm(Model model) {
		model.addAttribute("recipe", new Recipe());
		return "addrecipe";
	}

	@RequestMapping(value = "/addrecipe", method = RequestMethod.POST)
	public String processForm(@ModelAttribute Recipe recipe) {
		System.out.println(recipe.getBrewName());
		recipeDAO.saveRecipe(recipe);
		return "addedrecipe";
	}
	
	@ModelAttribute("allmalts")
	public Collection<Malt> malts() {
		return this.maltDAO.getMalts();
	}

}
