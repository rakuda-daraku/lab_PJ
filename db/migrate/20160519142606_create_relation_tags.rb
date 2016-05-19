class CreateRelationTags < ActiveRecord::Migration
  def change
    create_table :relation_tags do |t|

      t.integer :tag_code
      t.integer :relation_code

      t.timestamps null: false
    end
  end
end
