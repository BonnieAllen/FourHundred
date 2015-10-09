class Post < ActiveRecord::Base  
 has_many :uploads
 belongs_to :user 

 has_attached_file :image, styles: { :medium => "640x" }
 has_many :comments, dependent: :destroy
	
 validates :image, presence: true
 validates :user_id, presence: true
validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end 