class AddVilleidToCampings < ActiveRecord::Migration
  def change
    add_column :campings, :ville_id, :integer
  end
end
