class AddLongitudeToCampings < ActiveRecord::Migration
  def change
    add_column :campings, :longitude, :float
  end
end
