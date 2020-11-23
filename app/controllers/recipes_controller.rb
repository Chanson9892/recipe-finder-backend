class RecipesController < ApplicationController
    before_action :get_recipe, only: [:show]

    def index
        @recipes = Recipe.all 
    end

    def show
    end

    private

    def recipe_params
        params.require(:recipe).permit!
    end

    def get_recipe
        @recipe = Recipe.find(params[:id])
    end

end
