class Subject < ApplicationRecord
	has_and_belongs_to_many :levels
	has_many :sections
	#has_one :user
	belongs_to :user

	validates :name, presence: true
	validates :levels, presence: true
	validates_presence_of :name, :levels
end
