class TripSerializer < ActiveModel::Serializer
  attributes :id, :location, :done, :image
end
