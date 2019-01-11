package com.mihai.recipeapp.repositories;

import com.mihai.recipeapp.domain.Recipe;
import org.springframework.data.repository.CrudRepository;

public interface RecipeRepository extends CrudRepository <Recipe, Long> {


}
