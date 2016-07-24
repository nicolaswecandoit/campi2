class AddRegionidToCampings < ActiveRecord::Migration
  def change
    add_column :campings, :region_id, :integer
  end
end
