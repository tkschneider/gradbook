class UserProfileController < ApplicationController
	def index
	 @user = User.find(current_login.id)
	 @company = Company.find(@user.id)
	 @company_info = CompanyInfo.find(@company.id)
	end
end

