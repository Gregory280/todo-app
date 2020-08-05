class User < ApplicationRecord
  has_many :todo_lists
<<<<<<< HEAD
=======
  validates :username, presence: true, length: { minimum: 3, maximum: 20}, uniqueness: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :email, presence: true, length: { maximum: 100 }, uniqueness: true, format: {with: VALID_EMAIL_REGEX}
  validates :password, confirmation: true
>>>>>>> user-validation
end
