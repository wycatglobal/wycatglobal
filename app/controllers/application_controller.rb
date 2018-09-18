class ApplicationController < ActionController::Base
	include Pundit
	rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

	before_action :getalbumNav

	private

	def getalbumNav
		@albumNav = Album.all.order('updated_at DESC').paginate(:page => params[:page], :per_page => 15)
	end

	def user_not_authorized
		flash[:alert] = "Access denied."
		redirect_to (request.referrer || root_path)
	end
end
