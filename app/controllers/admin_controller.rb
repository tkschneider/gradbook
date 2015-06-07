# Author: Maxwell Barvian
class AdminController < AuthenticatedController
  before_filter lambda{ unauthorized() unless authorized? }

  private

  def authorized?
    current_login.worker? || current_login.admin?
  end
end
