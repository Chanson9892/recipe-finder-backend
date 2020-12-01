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
        response = RestClient.get "https://api.spoonacular.com/recipes/complexSearch?query=#{params[:query]}
        &instructionsRequired=true&number=5&apiKey=#{SPOONACULAR_API_KEY}&addRecipeInformation=true&fillIngredients=true"
        result = JSON.parse(response)
        render json: result
    end

    private
    def recipe_params
        params.permit(:api_id, :title, :image, :url, :user_id)
    end

end
