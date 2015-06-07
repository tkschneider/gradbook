# Author: Maxwell Barvian
class InternshipsController < AuthenticatedController
  def index
    @internships = GivingBack.pending.internship.where(approved: true)
  end
end
