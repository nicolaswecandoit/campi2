class CreateVilles < ActiveRecord::Migration
  def change
    create_table :villes do |t|
      t.text :nomcommune
      t.text :description
      t.string :nomdep
      t.integer :departement_id
      t.integer :code_postale
      t.text :region
      t.integer :region_id
      t.text :slug

      t.timestamps null: false
    end
  end
end
