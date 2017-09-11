class Section < ApplicationRecord
  belongs_to :subject
  has_one :request
end
