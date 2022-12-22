class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :image, :level, :password_digest
end
