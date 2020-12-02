class Favorite < ApplicationRecord
    belongs_to :recipe
    belongs_to :user
    has_many :comments, dependent: :destroy
end
