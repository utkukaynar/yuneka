class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :text
      t.text :meta_description
      t.string :meta_tags
      t.integer :type

      t.timestamps null: false
    end
  end
end
