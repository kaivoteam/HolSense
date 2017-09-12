class Request < ApplicationRecord
  has_one :section
  belongs_to :user
end
