class CreateFicheCampings < ActiveRecord::Migration
  def change
    create_table :fiche_campings do |t|
      t.string :index

      t.timestamps null: false
    end
  end
end
