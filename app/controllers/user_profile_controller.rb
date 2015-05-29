class UserProfileController < ApplicationController
	def index
	 @user = User.find(current_login.id) rescue nil
	 @company = Company.find(@user.id) rescue nil
	 @company_info = CompanyInfo.find(@company.id) rescue nil
	end
	
	
	
end

