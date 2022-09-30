class ApplicationController < ActionController::Base
  # Auth the user before everything...
  before_action :authenticate_user!
end
# @messages = Pivot.where(moderator_id: current_user).all
