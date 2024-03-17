class Product < ApplicationRecord
  validates :name, :price, presence: true
  validates_numericality_of :weight

  belongs_to :product_category

  default_scope { order('weight DESC') }
end
