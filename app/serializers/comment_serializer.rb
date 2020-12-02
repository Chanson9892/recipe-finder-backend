class CommentSerializer < ActiveModel::Serializer
    attributes :content, :id, :favorite
    #this grabs the favorite data of the instance of the comment so I can grab the favorite attributes
    def favorite
        object.favorite
    end
end