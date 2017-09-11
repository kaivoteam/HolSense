class Subject < ApplicationRecord
	has_and_belongs_to_many :levels
	has_many :sections
	has_one :user
end
