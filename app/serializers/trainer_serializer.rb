class TrainerSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :email, :phone_number, :image
end
