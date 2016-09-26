ActiveAdmin.register Category do

#  controller do
#    def find_resource
#      scoped_collection.friendly.find(params[:id])
#    end
#  end

  permit_params :name


end
