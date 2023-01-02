class Exercise < ApplicationRecord
	belongs_to :client
	has_many :machine_exercises
	has_many :machines, through: :machine_exercises
end
