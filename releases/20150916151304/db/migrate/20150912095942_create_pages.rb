class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.text :text
      t.text :meta_description
      t.string :meta_tags

      t.timestamps null: false
    end
  end
end
