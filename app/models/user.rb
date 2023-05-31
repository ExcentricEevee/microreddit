class User < ApplicationRecord
    has_many :posts

    validates :username, :email, :password, presence: { message: ->(object, data) do
        "Hey, #{data[:attribute].downcase} is empty."
    end }
    validates :username, length: { in: 2..16 }
    validates :email, uniqueness: true
end
