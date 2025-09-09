class CreateStyles < ActiveRecord::Migration[8.0]
  def change
    create_table :styles do |t|
      t.references :card, null: false, foreign_key: true
      t.string :icon_color, null: false
      t.string :card_background_color, null: false
      t.string :text_color, null: false
      t.string :button_color, null: false

      t.timestamps
    end
  end
end
