class DietSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :diet_type
end
