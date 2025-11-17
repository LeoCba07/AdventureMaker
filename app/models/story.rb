class Story < ApplicationRecord
  belongs_to :user
  has_many :messages
  validates :protagonist_name, :genre, presence: true
  validates :protagonist_name, length: { maximum: 15 }
  validates :protagonist_description, length: { maximum: 200 }
end
