class UserProfileController < ApplicationController
	def index
	 @user = User.find(current_login.id) rescue nil
	 @company = Company.find(@user.id) rescue nil
	 @company_info = CompanyInfo.find(@company.id) rescue nil
	 @undergraduate_degree = UndergraduateDegree.find(@user.id) rescue nil
	 @graduate_degree = GraduateDegree.find(@user.id) rescue nil
	end
	
	def edit
	
	end
	
end

