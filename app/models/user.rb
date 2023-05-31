class User < ApplicationRecord
    validates :username, :email, :password, presence: { message: ->(object, data) do
        "Hey, #{data[:attribute].downcase} is empty."
    end }
    validates :username, length: { in: 2..16 }
    validates :email, uniqueness: true
end
