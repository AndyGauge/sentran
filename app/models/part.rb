class Part < ApplicationRecord
  extend FriendlyId
  friendly_id :number, use: :slugged
  belongs_to :product
  has_many :part_attributes, class_name: 'Attribute', as: :eav
  accepts_nested_attributes_for :part_attributes, allow_destroy: true
end
