class Attribute < ApplicationRecord
  belongs_to :eav, polymorphic: true
end
