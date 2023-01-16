class GymSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :open_hours, :description
end
