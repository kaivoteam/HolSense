class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :school
  has_many :subjects

  rails_admin do
 		list do
 			exclude_fields :password
 			exclude_fields :password_confirmation
 			exclude_fields :reset_password_sent_at
 			exclude_fields :subjects
 		end
 		create do
 			exclude_fields :reset_password_sent_at
 			exclude_fields :last_sign_in_at
 		end
 end
end
