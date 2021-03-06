class Image < ApplicationRecord
	belongs_to :album
	has_attached_file :image
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/		
	validates :image, :album_id, presence: true
	validates :image_title, presence: true
end
