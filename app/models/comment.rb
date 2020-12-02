class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :favorite
    validates :content, length: {minimum: 10}
end
