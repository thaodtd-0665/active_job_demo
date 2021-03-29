class UserNotificationsCleanupJob < ApplicationJob
  queue_as :default

  def perform user_id
    user = User.find_by id: user_id
    return unless user

    user.notifications.mark_read.destroy_all
  end
end
