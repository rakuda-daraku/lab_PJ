class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :isbn
      t.string :title
      t.integer :price
      t.string :publish
      t.string :pulished
      t.string :cd

      t.timestamps null: false
    end
  end
end
