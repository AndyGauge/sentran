class Product < ApplicationRecord
  include FriendlyId
  friendly_id :name, use: :slugged
  belongs_to :category
  has_many :product_attributes, class_name: "Attribute", as: :eav
  has_many :parts
end
