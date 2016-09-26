ActiveAdmin.register Product do

#  controller do
#    def find_resource
#      scoped_collection.friendly.find(params[:id])
#    end
#  end
  controller do
    defaults resource_class: Product.friendly
  end

  permit_params :name, :category_id, product_attributes_attributes: [:id, :attr, :value, :_destroy]

  form do |f|
    f.semantic_errors
    f.inputs 'Primary' do
      f.input :name
      f.input :category
    end
    f.inputs 'Attributes' do
      f.has_many :product_attributes, heading: 'Product Attributes', allow_destroy: true, new_record: true do |a|
        a.input :attr
        a.input :value
      end
    end
    f.actions
  end

  sidebar "Parts", only: [:show, :edit] do
    ul do
      li link_to "Parts", admin_product_parts_path(resource)
    end
  end

end
