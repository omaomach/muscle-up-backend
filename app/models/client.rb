class Client < ApplicationRecord
	has_secure_password

	has_many :reviews
	# belongs_to :trainer
	# belongs_to :diet
	has_many :supplements
	has_many :exercises
end
