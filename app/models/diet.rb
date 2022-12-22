class Diet < ApplicationRecord
	has_many :clients
	has_many :losses
	has_many :gains
	has_many :clients
end
