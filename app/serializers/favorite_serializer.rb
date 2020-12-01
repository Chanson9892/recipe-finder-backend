class FavoriteSerializer < ActiveModel::Serializer
    attributes :id, user_id, recipe_id
    belongs_to :recipe
    belongs_to :user
end