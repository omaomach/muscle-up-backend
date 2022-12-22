class Client < ApplicationRecord
	belongs_to :admin
	has_many :reviews
	belongs_to :trainer
	belongs_to :diet
	has_many :supplements
	belongs_to :diet
	has_many :exercises
end
