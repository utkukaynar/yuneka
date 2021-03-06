class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :unit
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_attachment :products, :image
  end
end
