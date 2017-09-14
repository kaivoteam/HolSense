class School < ApplicationRecord
	has_many :levels
	has_one :user

	validates :name, presence: true

	has_attached_file :avatar,:styles => {:thumb => "100x100#",
									      :small  => "150x150>",
									      :medium => "200x200", 
									      :large => "400x400"},
									  default_style: :thumb,
                    default_url: "/assets/default_school_:style.jpg"
                    #default_url: "/missing_:style.png"


  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  # add a delete_<asset_name> method: 
  attr_accessor :delete_avatar
  before_validation { self.avatar.clear if self.delete_avatar == '1' }

  validates_presence_of :name

  rails_admin do
 		list do
 			exclude_fields :avatar
 		end
 		
  end

end
