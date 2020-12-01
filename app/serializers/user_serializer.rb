class UserSerializer < ActiveModel::Serializer
    attributes :username
    has_many :comments
    has_many :favorites
    has_many :recipes, through: :comments
    has_many :recipes, through: :favorites
end