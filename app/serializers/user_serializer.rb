class UserSerializer < ActiveModel::Serializer
    attributes :username
    has_many :comments
    has_many :favorites
end