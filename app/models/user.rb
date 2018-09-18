class User < ApplicationRecord

	enum role: [:basic_user, :all_editor, :album_editor, :event_editor, :news_editor, :admin]
	after_initialize :set_default_role, :if => :new_record?

	def set_default_role
		self.role ||= :basic_user
	end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # :registerable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable
end
