class Users::NotificationSetting < ApplicationRecord
  belongs_to :user, touch: true

  validates :email_digest_periodic, :email_card_notifications, inclusion: { in: [ true, false ] }
end
