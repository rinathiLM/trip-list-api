class TripSerializer < ActiveModel::Serializer
  attributes :id, :location, :done
end
