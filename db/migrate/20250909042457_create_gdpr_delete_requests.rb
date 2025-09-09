class CreateGdprDeleteRequests < ActiveRecord::Migration[8.0]
  def change
    create_table :gdpr_delete_requests do |t|
      t.string :email, null: false
      t.timestamps
    end
  end
end
