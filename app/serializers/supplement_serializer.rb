class SupplementSerializer < ActiveModel::Serializer
  attributes :id, :name, :client_id, :amount
end
