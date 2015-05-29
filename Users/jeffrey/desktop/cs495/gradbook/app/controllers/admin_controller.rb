# author: Max Barvian
class AdminController < AuthenticatedController
  before_filter :authorized?

  private

  def authorized?
    unless current_login.worker? || current_login.admin?
      flash[:error] = "You are not authorized to view this page."
      redirect_to root_path
    end
  end
end
