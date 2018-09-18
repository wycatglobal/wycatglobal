class AlbumPolicy
	attr_reader :current_user, :model

	def initialize(current_user, model)
		@current_user = current_user
		@user = model
	end

	def new?
		@current_user.admin? or @current_user.all_editor? or @current_user.album_editor?
	end

	def create?
		@current_user.admin? or @current_user.all_editor? or @current_user.album_editor?
	end

	def edit?
		@current_user.admin? or @current_user.all_editor? or @current_user.album_editor?
	end

	def update?
		@current_user.admin? or @current_user.all_editor? or @current_user.album_editor?
	end

	def destroy?
		@current_user.admin? or @current_user.all_editor? or @current_user.album_editor?
	end
end