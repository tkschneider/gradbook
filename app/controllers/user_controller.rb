# Created by Tim Schneider
class UserController < AuthenticatedController
  before_filter lambda{ unauthorized() unless current_login.authorized_to_show_profile? params[:id].to_i }, only: :show
  before_filter lambda{ unauthorized() unless current_login.authorized_to_edit_profile? params[:id].to_i }, only: [:edit, :update]

  # Creates an action to use for the autocomplete Company textfield
  autocomplete :company, :name, column_name: 'company_name'

  # Index to user profile page
  def index
    @user = current_login.user
    render 'show'
  end

  # Show method for the user profile page
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    @user.build_company unless @user.company
    @user.company.build_company_info unless @user.company.company_info
    @user.user_phones.build if @user.user_phones.empty?
  end

  def update
    @user = User.find(params[:id])
    profile = user_params.to_h

    # Check if a company with the givne name already exists, and if so,
    # use it instead
    if (company_name = profile['company_attributes']['company_name']) && (company = Company.find_by(company_name: company_name))
      # Re-link previous info if already configured
      @user.company.company_info.company = company if @user.company.company_info
      # Link new company
      @user.company = company
      # Update params accordingly
      profile['company_attributes']['id'] = company.id
    end

    if @user.update(profile.deep_reject { |k, v| ['password', 'password_confirmation'].include?(k) && v.blank? })
      flash[:success] = "Profile updated."
    else
      Rails.logger.info(@user.errors.inspect)
      flash[:alert] = "Your profile could not be updated."
    end

    redirect_to :back
  end

  private

  def user_params
    params.require(:user).permit(
      :street, :city, :state, :zip, :spouse_first_name, :spouse_middle_initial,
      :spouse_last_name, :number_children, :birth_day, :birth_month, :birth_year, :ethnicity,
      :general_opt_in, :email_opt_in, :phone_opt_in, :searchable,
      :status, :salary_range, :job_title, :start_date, :end_date,
      login_attributes: [
        :id, :first_name, :middle_initial, :last_name,
        :username, :email, :password, :password_confirmation
      ],
      user_phones_attributes: [:id, :country_code, :area_code, :prefix, :suffix, :extension, :type, :_destroy],
      company_attributes: [:id, :company_name,
        company_info_attributes: [:id, :street, :city, :state, :zip, :country_code, :area_code, :prefix, :suffix]
      ]
    )
  end

  def phone_params
    params.require(:user_phone).permit( :area_code, :prefix, :suffix, :extension, :type)
  end
end
