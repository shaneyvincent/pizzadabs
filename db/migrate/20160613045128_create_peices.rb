class CreatePeices < ActiveRecord::Migration
  def change
    create_table :peices do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.integer :price
      t.string :category
      t.string :subcategory

      t.timestamps null: false
    end
  end
end
