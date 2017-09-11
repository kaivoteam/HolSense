class School < ApplicationRecord
	has_attached_file :avatar

	has_many :levels
	has_one :user
end
