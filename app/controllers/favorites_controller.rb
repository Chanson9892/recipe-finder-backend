class FavoritesController < ApplicationController
    def index
        favorites = Favorite.all 
    end

    def create
        favorite = Favorite.create(favorite_params)
    end

    private 

    def favorite_params
        params.require(:favorite).permit(:user_id, :recipe_id)
    end
end
