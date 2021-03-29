class Notification < ApplicationRecord
  belongs_to :user

  enum status: {not_read: 0, mark_read: 1}
end
