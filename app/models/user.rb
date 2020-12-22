class User < ApplicationRecord
    validates :username, :email, :password, presence: true
    validates :username, :email, :password, length: {minimum: 3}
    validates :username, uniqueness: {scope: :username, message: 'Username already taken!'}
    validates :username, format: {with: /\A[0-9A-Za-z]+\z/, message: 'Alphanumeric only!' }
end
