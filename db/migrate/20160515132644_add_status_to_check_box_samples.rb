class AddStatusToCheckBoxSamples < ActiveRecord::Migration
  def change
    add_column :check_box_samples, :status, :string
  end
end
