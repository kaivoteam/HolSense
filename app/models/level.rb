class Level < ApplicationRecord
	#has_one :school
	belongs_to :school
	has_and_belongs_to_many :subjects
end
