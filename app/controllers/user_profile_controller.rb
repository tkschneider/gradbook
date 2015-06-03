class UserProfileController < ApplicationController
	def index
	 @user = User.find(current_login.id) rescue nil
	 @company = Company.find(@user.id) rescue nil
	 @company_info = CompanyInfo.find(@company.id) rescue nil
	 @undergraduate_degree = UndergraduateDegree.find(@user.id) rescue nil
	 @graduate_degree = GraduateDegree.find(@user.id) rescue nil
	end
	
	def edit
	@login = Login.find(current_login.id)
	if Login.exists?(current_login.id)
		@login = Login.find(current_login.id)
	end
	end
	
	def update
	@login = Login.find(current_login.id)
	if @login.update(login_params)
	      flash[:success] = "Login updated"
      else
        flash[:alert] = "Login NOT updated"
      end
	end
	
	
	private
	def login_params
	params.permit(:first_name, :middle_initial, :last_name, :username, :password)
	end
	
	def user_params
	params.permit(:user_street, :user_city, :user_state, :user_zip, :spouse_first_name, :spouse_middle_initial,
				  :spouse_last_name, :number_children, :birth_month, :birth_day, :birth_year,
				  :ethnicity, :user_status, :salaray_range, :job_title, :user_start_date, :user_end_date, :searchable, :subscription_type)
	end
	
	def college_params
	params.permit(:college_name)
	end
	
	def company_params
	params.permit(:company_name)
	end
	
	def company_info_params
	params.permit(:company_street, :company_city, :company_state, :company_area_code, :company_prefix, :company_suffix)
	end
	
	def user_phone_params
	params.permit(:phone_country_code, :phone_area_code, :phone_prefix, :phone_suffix, :phone_type)
	end
	
	def undergraduate_degree_params
	params.permit(:undergrad_graduation_date)
	end
	
	def graduate_degree_params
	params.permit(:graduate_graduation_date, :graduate_status)
	end
	
	def degree_params
	params.permit(:major_name, :type)
	end
end

