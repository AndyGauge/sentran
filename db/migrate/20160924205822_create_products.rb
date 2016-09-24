class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :slug
      t.references :category, foreign_key: true

      t.timestamps
    end
    add_index :products, :slug, unique: true
  end
end
