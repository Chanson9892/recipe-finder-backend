class UserSerializer < ActiveModel::Serializer
    attributes :username
    has_many :comments
    has_many :recipes, through: :comments
    has_many :recipes, through: :favorites
    has_many :favorites
end