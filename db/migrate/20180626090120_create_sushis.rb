class CreateSushis < ActiveRecord::Migration
  def change
    create_table :sushis do |t|
      t.string :name
      t.integer :price
      t.text :description

      t.timestamps null: false
    end
  end
end
