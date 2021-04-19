class HomeController < ApplicationController
  def index
    @announcements = Announcement.order('updated_at DESC').take(4)
    @services = Service.all
  end

end
