class Post < ApplicationRecord
  
  acts_as_taggable

  extend FriendlyId
  friendly_id :title, use: :slugged

  def should_generate_new_friendly_id?
  	title_changed?
  end

  has_attached_file :cover_image
  validates_attachment_content_type :cover_image, content_type: /\Aimage\/.*\z/	  
end
