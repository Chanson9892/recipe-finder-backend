class Recipe < ApplicationRecord
    has_many :comments, dependent: :destroy
    has_many :users, through: :comments
    has_many :users, through: :favorites
    has_many :favorites, dependent: :destroy
end
