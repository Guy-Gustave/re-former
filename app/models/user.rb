class User < ApplicationRecord
  validates :username, :email, :password, presence: true
  validates :username, length: { minimum: 3, maximum: 20 }, uniqueness: true
  validates :email, format: { with: /[\w]+@[a-z]+\.[a-z]{1,63}/ }, uniqueness: true
  validates :password, length: { minimum: 6, maximum: 20 }
end
