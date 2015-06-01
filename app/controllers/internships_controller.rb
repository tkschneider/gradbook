# author: Max Barvian
class InternshipsController < AuthenticatedController
  def index
    @internships = GivingBack.internship.where(approved: true, hidden: false)
  end
end
