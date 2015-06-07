# Created by Tim Schneider
class UserController < AuthenticatedController
  before_filter :check_privileges!, only: [:show, :edit]

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
    @user.user_phones.build if @user.user_phones.empty?
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      flash[:success] = "Profile updated."
    else
      Rails.logger.info(@user.errors.messages.inspect)
      flash[:alert] = "Your profile could not be updated."
    end

    redirect_to :back
  end

  private

  def check_privileges!
    unauthorized() unless params[:id].to_i == current_login.user.id || current_login.admin? || current_login.worker?
  end

  def user_params
    params.require(:user).permit(
      :street, :city, :state, :zip, :spouse_first_name, :spouse_middle_initial,
      :spouse_last_name, :number_children, :birth_date, :ethnicity,
      :general_opt_in, :email_opt_in, :phone_opt_in, :searchable,
      :status, :salary_range, :job_title, :start_date, :end_date,
      login_attributes: [:id, :first_name, :middle_initial, :last_name, :username, :email],
      user_phones_attributes: [:id, :country_code, :area_code, :prefix, :suffix, :extension, :type]
    )
  end

  def phone_params
    params.require(:user_phone).permit( :area_code, :prefix, :suffix, :extension, :type)
  end
end
