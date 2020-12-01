class FavoritesController < ApplicationController
    skip_before_action :authorized

    def index
        favorites = Favorite.all 
        render json: favorites
    end

    def create
        # @recipe = Recipe.where(api_id: favorite_params[:api_id]).first_or_create do |fave|
        #     fave.title = favorite_params[:title]
        #     fave.image = favorite_params[:image]
        #     fave.url = favorite_params[:url]
        # end
        @favorite = Favorite.find_or_create_by(favorite_params)
        render json: @favorite
    end

    def show
        @favorite = Favorites.find(params[:id])
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
        params.require(:favorite).permit(:user_id, :recipe_id)
    end
end
