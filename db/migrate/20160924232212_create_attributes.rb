class CreateAttributes < ActiveRecord::Migration[5.0]
  def change
    create_table :attributes do |t|
      t.references :eav, polymorphic: true
      t.string :attr
      t.string :value

      t.timestamps
    end
  end
end
