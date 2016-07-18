class AddSlugToCamping < ActiveRecord::Migration
  def change
    add_column :campings, :slug, :string
  end
end
