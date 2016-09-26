class AddSlugToParts < ActiveRecord::Migration[5.0]
  def change
    add_column :parts, :slug, :string
  end
end
