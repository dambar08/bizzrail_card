class CreateUsersNotificationSettings < ActiveRecord::Migration[8.0]
  def change
    create_table :users_notification_settings do |t|
      t.belongs_to :user
      t.boolean :email_digest_periodic, null: false, default: false
      t.boolean :email_card_notifications, null: false, default: true
      t.timestamps
    end
  end
end
