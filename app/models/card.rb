class Card < ApplicationRecord
  belongs_to :user
  validates :title, :english_firstname, :english_lastname, :company_name, presence: true


  after_create_commit :send_email_notification

  def send_email_notification
    return unless user.is_a?(User)
    return unless user.email_address && user.notification_setting.email_card_notifications

    BadgeAchievements::SendEmailNotificationJob.perform_async(id)
  end
end
