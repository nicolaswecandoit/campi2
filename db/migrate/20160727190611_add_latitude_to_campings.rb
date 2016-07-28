class AddLatitudeToCampings < ActiveRecord::Migration
  def change
    add_column :campings, :latitude, :float
  end
end
