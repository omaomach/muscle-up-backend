class ServiceSerializer < ActiveModel::Serializer
  attributes :id, :description, :image, :name, :trainer_id
end
