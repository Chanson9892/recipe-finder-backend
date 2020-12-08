class RecipesController < ApplicationController
    SPOONACULAR_API_KEY = ENV['spoonacular_api_key']

    def index
        recipes = Recipe.where(user_id: @user.id)
        render json: recipes
    end

    def create
        recipe = Recipe.find_or_create_by(recipe_params)
        render json: recipe
    end

    def show
        response = RestClient.get "https://api.spoonacular.com/recipes/complexSearch?titleMatch=#{params[:titleMatch]}
        &instructionsRequired=true&number=15&apiKey=#{SPOONACULAR_API_KEY}&addRecipeInformation=true&fillIngredients=true&sort=popularity&includeIngredients=#{params[:includeIngredients]}"
        result = JSON.parse(response)
        render json: result
    end

    private
    def recipe_params
        params.permit(:api_id, :title, :image, :url, :user_id)
    end

end
