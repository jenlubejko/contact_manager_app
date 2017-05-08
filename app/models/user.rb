class User < ApplicationRecord
  has_many :contacts

  has_secure_password

  validates :name, :email, :password, :password_confirmation, presence: :true
end