class CreateCheckBoxSamples < ActiveRecord::Migration
  def change
    create_table :check_box_samples do |t|

      t.timestamps null: false
    end
  end
end
