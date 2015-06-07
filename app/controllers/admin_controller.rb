# Author: Maxwell Barvian
class AdminController < AuthenticatedController
  before_filter :check_privileges!

  private

  def check_privileges!
    # Redirects to root unless the current user is an admin or worker
    unauthorized() unless current_login.worker? || current_login.admin?
  end
end
