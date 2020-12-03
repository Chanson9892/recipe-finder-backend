class FavoriteSerializer < ActiveModel::Serializer
    attributes :id, :recipe, :comments
    has_many :comments
    #this grabs the recipe data of the instance of the favorite so I can grab the recipe attributes
    def recipe
        object.recipe
    end

    def comments
        object.comments
    end
end