class UserProfileController < ApplicationController
	def index
	 @user = User.find(current_login.id)
	end
end

