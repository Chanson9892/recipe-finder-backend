class UserSerializer < ActiveModel::Serializer
    attributes :username
    has_many :favorites
end