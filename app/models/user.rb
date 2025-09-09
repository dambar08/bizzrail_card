class User < ApplicationRecord
  rolify strict: true
  has_secure_password
  before_create :create_notification_settings_records

  has_one :notification_setting, class_name: "Users::NotificationSetting", dependent: :delete
  has_many :cards, dependent: :destroy
  has_many :sessions, dependent: :destroy

  normalizes :email_address, with: ->(e) { e.strip.downcase }

  def create_notification_settings_records
    self.notification_setting = Users::NotificationSetting.create
  end
end
