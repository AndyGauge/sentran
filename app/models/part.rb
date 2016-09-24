class Part < ApplicationRecord
  belongs_to :product
  has_many :part_attributes, class_name: 'Attribute', as: :eav
end
