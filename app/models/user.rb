class User < ApplicationRecord
    has_many :favorites, dependent: :destroy
    has_many :comments, through: :favorites
    has_many :recipes, through: :favorites

    has_secure_password 
    validates :username, uniqueness: { case_sensitive: false }
    validates :username, length: { minimum: 6}
end
