class LocationSerializer < ActiveModel::Serializer
  attributes :address,
             :city,
             :lat,
             :lon,
             :state,
             :store_number,
             :zip
  belongs_to :purchase
end
