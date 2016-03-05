class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.text :description
      t.string :photo
      t.string :client
      t.timestamps null: false
    end
  end
end
