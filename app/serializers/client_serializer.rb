class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :image, :level, :diet_type, :weight
end
