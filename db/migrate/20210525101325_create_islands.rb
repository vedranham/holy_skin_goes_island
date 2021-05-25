class CreateIslands < ActiveRecord::Migration[6.0]
  def change
    create_table :islands do |t|
      t.string :name
      t.string :address
      t.text :description
      t.integer :daily_rate
      t.boolean :availability
      t.references :review, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
