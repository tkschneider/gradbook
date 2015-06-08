# Author: Maxwell Barvian
class AuthenticatedController < ApplicationController
  before_filter :authenticate_login!
end
