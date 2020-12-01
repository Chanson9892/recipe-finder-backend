class FavoriteSerializer < ActiveModel::Serializer
    attributes :id, :recipe
    # belongs_to :recipe
    #this grabs the recipe data of the instance of the favorite so I can grab the recipe attributes
    def recipe
        object.recipe
    end
end