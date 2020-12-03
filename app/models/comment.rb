class Comment < ApplicationRecord
    belongs_to :favorite
    validates :content, length: {minimum: 1}
end
