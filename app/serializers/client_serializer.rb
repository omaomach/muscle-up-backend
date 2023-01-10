class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :image, :level
end
