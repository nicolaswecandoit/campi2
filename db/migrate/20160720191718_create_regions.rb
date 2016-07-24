class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.text :descriptionregion
      t.text :nomderegion
      t.text :slug

      t.timestamps null: false
    end
  end
end
