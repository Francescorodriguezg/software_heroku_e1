module ApplicationHelper
  def user_admin
    if user_signed_in?
      return current_user.admin
    end
  end
  def user_moderator
    if user_signed_in?
      return current_user.moderator
    end
  end
end
