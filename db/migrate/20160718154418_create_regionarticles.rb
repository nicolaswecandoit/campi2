class CreateRegionarticles < ActiveRecord::Migration
  def change
    create_table :regionarticles do |t|
      t.string :index

      t.timestamps null: false
    end
  end
end
