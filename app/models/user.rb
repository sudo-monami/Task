class User < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { maximum: 15}
  validates :email, presence: true, uniqueness: true, format: {with: /\A[\w+]+@[a-zA-Z]+\.[a-zA-Z]+\z/}
  validates :name, length: { maximum: 15}
  validates :password, length: { in: 8 .. 32}, format: {with: /\A(?=.*[a-zA-Z])(?=.*[0-9])/}
  has_secure_password
end
