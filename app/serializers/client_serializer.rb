class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :image, :level, :age, :phone_number, :diet_type, :payment_info, :weight, :target_weight
end
