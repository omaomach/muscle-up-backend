class Machine < ApplicationRecord
    has_many :machine_exercises
    has_many :exercises, through: :machine_exercises
end
