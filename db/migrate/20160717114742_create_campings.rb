class CreateCampings < ActiveRecord::Migration
  def change
    create_table :campings do |t|
      t.string :nom
      t.string :adresse
      t.string :code_postale
      t.string :commune
      t.string :courriel
      t.string :site_internet
      t.integer :emplacements
      t.string :tel
      t.text :description
      t.string :nomdep
      t.string :region
      t.integer :numdep

      t.timestamps null: false
    end
  end
end
