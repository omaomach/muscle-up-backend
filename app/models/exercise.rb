class Exercise < ApplicationRecord
	belongs_to :client
	has_many :equipment_exercises
	has_many :equipments, through: :equipment_exercises
end
