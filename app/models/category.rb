class Category < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]
  has_many :products
end
