class Post < ApplicationRecord
    validates :title, :body, :user_id, presence: true
    validates :title, length: { in: 4..24 }
end