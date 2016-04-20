class DashboardController < ApplicationController
  before_action :authenticate_user!
  def new
    Pusher['test_channel'].trigger('greet', {
      :greeting => "Hello there!"
    })
  end

end
