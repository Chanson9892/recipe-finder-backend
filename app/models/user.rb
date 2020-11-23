class User < ApplicationRecord
    has_many :comments
    has_many :recipes, through: :comments
    has_many :favorites

    # has_secure_password 
    # validates :username, uniqueness: { case_sensitive: false }
    # validates :username, length: { minimum: 6}
end
