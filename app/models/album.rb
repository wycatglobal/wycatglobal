class Album < ApplicationRecord
	has_attached_file :cover_image
	validates_attachment_content_type :cover_image, content_type: /\Aimage\/.*\z/
	has_many :images, :dependent => :delete_all
	validates :name, presence: true, uniqueness: true
end
