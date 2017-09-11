class Request < ApplicationRecord
  has_one :section
  belong_to :user
end
