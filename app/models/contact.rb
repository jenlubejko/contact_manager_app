class Contact < ApplicationRecord
  has_many :phones
  has_many :addresses

  belongs_to :user

  validates :name, presence: true
end
