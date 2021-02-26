class HomeController < ApplicationController
  def index
    @announcements = Announcement.order('updated_at DESC').take(4)
  end

end
