package com.mihai.recipeapp.services;

import com.mihai.recipeapp.commands.RecipeCommand;
import com.mihai.recipeapp.domain.Recipe;

import java.util.Set;

public interface RecipeService {

    Set<Recipe> getRecipes();

    Recipe findById(Long id);

    RecipeCommand saveRecipeCommand(RecipeCommand command);
}
