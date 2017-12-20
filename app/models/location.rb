class Location < ApplicationRecord
  belongs_to :purchase
  validates_presence_of :purchase
end
