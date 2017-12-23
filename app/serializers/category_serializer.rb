# Category Serializer
class CategorySerializer < ActiveModel::Serializer
  attributes :name
  has_many :purchases

end
