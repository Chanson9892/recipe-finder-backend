class RecipesController < ApplicationController
    SPOONACULAR_API_KEY = ENV['spoonacular_api_key']

    def show
        response = RestClient.get "https://api.spoonacular.com/recipes/complexSearch?titleMatch=#{params[:titleMatch]}&instructionsRequired=true&number=5&api_key=#{SPOONACULAR_API_KEY}"
        result = JSON.parse(response)
        render json: result
    end

end
