# category
class Category < ApplicationRecord
  has_many :groups
  has_many :categories, through: :groups
  validates_presence_of :name
end
