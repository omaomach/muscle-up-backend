class Trainer < ApplicationRecord
	has_many :clients
	has_many :services
end
