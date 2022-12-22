class Equipment < ApplicationRecord
	has_many :equipment_exercises
	has_many :exercises, through: :equipment_exercises
end
