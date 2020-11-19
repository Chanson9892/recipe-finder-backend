class Comment < ApplicationRecord
    belongs_to :recipe
    belongs_to :user
    validates :content, length: { in: 10..200 }
end
