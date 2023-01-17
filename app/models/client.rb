class Client < ApplicationRecord
	has_secure_password

	has_many :reviews
	# belongs_to :trainer
	# belongs_to :diet
	has_many :supplements
	has_many :exercises

	# validates :name, presence: true, uniqueness: true
	# validates :email, presence: true, uniqueness: true
	# validates :phone_number, presence: true, uniqueness: true


end
