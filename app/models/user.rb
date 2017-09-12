class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :school
  has_many :subjects

  validates :email, presence: true
  validates :password, presence: true
  validates :password_confirmation, presence: true

  has_attached_file :avatar,:styles => {:thumb => "100x100#",
									      :small  => "150x150>",
									      :medium => "200x200", 
									      :large => "400x400"},
									  default_style: :thumb,
                    default_url: "/assets/default_school.jpg"
                    #default_url: "/missing_:style.png"


  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  # add a delete_<asset_name> method: 
  attr_accessor :delete_avatar
  before_validation { self.avatar.clear if self.delete_avatar == '1' }

  validates_presence_of :email, :password, :password_confirmation

  rails_admin do
 		list do
 			exclude_fields :password
 			exclude_fields :password_confirmation
 			exclude_fields :reset_password_sent_at
 			exclude_fields :subjects
 			exclude_fields :avatar
 		end
 		create do
 			exclude_fields :reset_password_sent_at
 			exclude_fields :last_sign_in_at
 		end
  end
end
