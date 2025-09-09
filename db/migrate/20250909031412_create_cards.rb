class CreateCards < ActiveRecord::Migration[8.0]
  def change
    create_table :cards do |t|
      t.references :user, null: false, foreign_key: true
      t.string :english_firstname, null: false
      t.string :english_lastname, null: false
      t.string :chinese_name
      t.string :title, null: false
      t.string :chinese
      t.string :company_name, null: false
      t.string :company_address
      t.string :chinese_company_address

      t.timestamps
    end
  end
end
