class CreateDepartements < ActiveRecord::Migration
  def change
    create_table :departements do |t|
      t.text :description
      t.string :nomdep
      t.integer :departement_id
      t.string :slug
      t.integer :region_id

      t.timestamps null: false
    end
  end
end
