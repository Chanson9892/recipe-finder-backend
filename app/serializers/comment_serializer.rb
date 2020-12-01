class CommentSerializer < ActiveModel::Serializer
    attributes :content
    belongs_to :recipe
    belongs_to :user
end