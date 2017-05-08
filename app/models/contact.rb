class Contact < ApplicationRecord
  validates :name, presence: true

  has_many :phones
  has_many :addresses
end
