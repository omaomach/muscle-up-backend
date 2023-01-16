class MachineSerializer < ActiveModel::Serializer
  attributes :id, :name, :condition, :image, :number
end
