ActiveAdmin.register Part do
  belongs_to :product
  controller do
    before_action :set_product
    def set_product
      @product=Product.friendly.find(params[:product_id])
    end
  end
  permit_params :number, :product_id, :price, part_attributes_attributes: [:id, :attr, :value]

  form title: 'Part' do |f|
    f.semantic_errors
    f.inputs "#{f.object.product.name} part properties" do
      f.input :product
      f.input :number
      f.input :price
    end
    f.inputs 'Attributes' do
      f.has_many :part_attributes, heading: 'Part Attributes', allow_destroy: true, new_record: true do |a|
        a.input :attr
        a.input :value
      end
    end
    f.actions
  end
      
end
