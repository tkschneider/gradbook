class UserProfileController < AuthenticatedController
	#Created by Tim Schneider

	
	# Show method for the user profile page
	def show
		@user = User.find(params[:id])
		@login = Login.find(params[:id]) rescue nil
		@user_phone = UserPhone.find(@user.id) rescue nil	

		@company = Company.find(@user.id) rescue nil
		@company_info = CompanyInfo.find(@company.id) rescue nil
		
		@degrees = Degree.find(@user.id) rescue nil
		@colleges = College.find(@user.id) rescue nil			
		@undergraduate_degree = UndergraduateDegree.find(@user.id) rescue nil
		@graduate_degree = GraduateDegree.find(@user.id) rescue nil
	end

	# Index to user profile page
	def index
		redirect_to :action => 'show', :controller => 'user_profile', :id => current_login.id
	end
	
	def edit
	
	end

	# Method to update login info
	def update_login

	@login = Login.find(current_login.id)
	if @login.update(login_params)
         flash[:success] = "Login updated"
          redirect_to :action => 'index'
      else
        flash[:alert] = "Login NOT updated"
		redirect_to :action => 'index'
      end
	end

	# This method update the user and user_phone tables.
	# The problems I am having here are as follows:
		#The columns update to nil if the textfield is blank.
		#Right now this only tells you if the phone update failed or succeeded but it needs to check user and user_phone
	def update_user
	@login = Login.find(current_login.id)

	# Check if user exists. If it does update user or else create user
	if User.exists?(@login.id)
	@user = User.find(@login.id)
		if @user.update(user_params)
		flash[:sucess] = "User updated"
		else
		flash[:alert] = "User Not updated"
		end
	else
	@user = User.new(user_params)
	@user.save
	end

	# check if user_phone exists. If it does update user_phone or else create user_phone
	if UserPhone.exists?(@login.id)
		@user_phone = UserPhone.find(@login.id)
		if @user_phone.update(phone_params)
		flash[:sucess] = "Info updated"
		else
		flash[:alert] = "Info Not updated"
		end
	else
	@user_phone = UserPhone.new(phone_params)
	user_phone.save
	end

	# redirect back to page
	redirect_to :action => 'edit'
	end


	private
    def login_params
        params.require(:login).permit(:first_name, :middle_initial, :last_name, :username, :email, :password)
    end

	def user_params
		params.require(:user).permit(:street, :city, :state, :zip, :spouse_first_name, :spouse_middle_initial,
		:spouse_last_name, :number_children, :birth_date, :ethnicity, :general_opt_in, :email_opt_in, :phone_opt_in,
		:status, :salary_range,  :job_title, :start_date, :end_date)
	end

	def phone_params
		params.require(:user_phone).permit( :area_code, :prefix, :suffix, :extension, :type)
	end
end
