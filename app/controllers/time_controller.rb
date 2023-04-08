class TimeController < ApplicationController
  after_action :set_status
  def index
    #código placeholder para probar que javascript esbuild fuinciona
  end
  private
  def set_status
    current_user.update!(status: User.statuses[:offline]) if current_user
  end


end
