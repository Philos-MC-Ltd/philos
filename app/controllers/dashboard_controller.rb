class DashboardController < ApplicationController
  before_action :change_on_login
  def index
    @internships = Internship.all
  end
  def change_on_login
    unless user_signed_in?
      redirect_to home_index_path
    end
  end

end
