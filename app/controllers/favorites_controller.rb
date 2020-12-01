class FavoritesController < ApplicationController
    def index
        favorites = Favorite.all 
    end

    def create
        byebug
        @recipe = Recipe.where(api_id: favorite_params[:api_id]).first_or_create do |fave|
            fave.title = favorite_params[:title]
            fave.image = favorite_params[:image]
            fave.url = favorite_params[:url]
        end
        @favorite = Favorite.create(user_id: favorite_params[:user_id], recipe_id: @recipe.id)
        render json: @favorite
    end

    def show
        @favorite = Favorite.find(params[:id])
        render json: @favorite
    end

    def destroy
        @favorite = Favorite.find(params[:id])
        favoriteId = @favorite.id
        @favorite.destroy
        render json: {message:"Zap! favorite deleted", favoriteId:favoriteId}
    end

    private 

    def favorite_params
        params.require(:favorite).permit(:user_id, :api_id, :title, :image, :url)
    end
end
