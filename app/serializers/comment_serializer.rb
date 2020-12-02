class CommentSerializer < ActiveModel::Serializer
    attributes :content :id, :recipe
    #this grabs the recipe data of the instance of the comment so I can grab the recipe attributes
    def recipe
        object.recipe
    end
end