class AddAttrIndextoAttribute < ActiveRecord::Migration[5.0]
  def change
    add_index :attributes, :attr
  end
end
