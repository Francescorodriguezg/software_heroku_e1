module PublicationsHelper
  def user_admin
    return current_user.admin
  end
  def user_moderator
    return current_user.moderator
  end
end
