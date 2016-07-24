class AddDepartementidToCampings < ActiveRecord::Migration
  def change
    add_column :campings, :departement_id, :integer
  end
end
