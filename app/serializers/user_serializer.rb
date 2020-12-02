class UserSerializer < ActiveModel::Serializer
    attributes :username
    has_many :favorites
    has_many :comments, through: :favorites
end