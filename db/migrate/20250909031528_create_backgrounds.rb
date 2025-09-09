class CreateBackgrounds < ActiveRecord::Migration[8.0]
  def change
    create_table :backgrounds do |t|
      t.references :card, null: false, foreign_key: true
      t.string :type, null: false
      t.string :header_bg_color_one, null: false
      t.string :header_bg_color_two, null: false
      t.string :footer_bg_color, null: false
      t.timestamps
    end
  end
end
