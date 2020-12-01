class Recipe < ApplicationRecord
    has_many :comments
    has_many :users, through: :comments
    has_many :users, through: :favorites
    has_many :favorites
end
