class RecipesController < ApplicationController
    SPOONACULAR_API_KEY = ENV['spoonacular_api_key']

    def show
        # byebug 
        response = RestClient.get "https://api.spoonacular.com/recipes/complexSearch?query=#{params[:query]}&instructionsRequired=true&number=5&apiKey=#{SPOONACULAR_API_KEY}"
        result = JSON.parse(response)
        render json: result
    end

end
