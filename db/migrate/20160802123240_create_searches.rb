class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :nom
      t.string :commune
      t.string :nomdep
      t.string :region
      t.string :etoile

      t.timestamps null: false
    end
  end
end
