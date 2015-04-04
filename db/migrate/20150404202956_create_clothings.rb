class CreateClothings < ActiveRecord::Migration
  def change
    create_table :clothings do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :size

      t.timestamps null: false
    end
  end
end
