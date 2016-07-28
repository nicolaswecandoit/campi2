class AddEtoileToCampings < ActiveRecord::Migration
  def change
    add_column :campings, :etoile, :string
  end
end
