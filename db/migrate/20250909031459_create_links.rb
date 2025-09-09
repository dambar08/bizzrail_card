class CreateLinks < ActiveRecord::Migration[8.0]
  def change
    create_table :links do |t|
      t.references :card, null: false, foreign_key: true
      t.string :link_type, null: false
      t.string :value, null: false

      t.timestamps
    end
  end
end
