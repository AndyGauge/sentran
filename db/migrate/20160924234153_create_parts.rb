class CreateParts < ActiveRecord::Migration[5.0]
  def change
    create_table :parts do |t|
      t.references :product, foreign_key: true
      t.string :number
      t.decimal :price

      t.timestamps
    end
  end
end
