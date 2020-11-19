class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body, :recipe_id, :user_id
end
