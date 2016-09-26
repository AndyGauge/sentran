class Product < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  belongs_to :category
  has_many :product_attributes, class_name: "Attribute", as: :eav, :extend => ByAttribute
  has_many :parts
  accepts_nested_attributes_for :product_attributes, allow_destroy: true
end
