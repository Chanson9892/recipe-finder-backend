class FavoriteSerializer < ActiveModel::Serializer
    belongs_to :recipe
    belongs_to :user
end