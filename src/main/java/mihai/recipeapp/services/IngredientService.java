package mihai.recipeapp.services;

import mihai.recipeapp.commands.IngredientCommand;

public interface IngredientService {

    IngredientCommand saveIngredientCommand(IngredientCommand ingredientCommand);

    IngredientCommand findByRecipeIdAndIngredientId(Long recipeId, Long ingredientId);

    void deleteById(Long recipeId, Long ingredientIdToDelete);
}
