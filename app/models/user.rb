class User < ApplicationRecord
    has_many :comments
    has_many :recipes, through: :comments
    has_many :favorites
end
