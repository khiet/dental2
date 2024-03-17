class Product < ApplicationRecord
  validates :name, :price, presence: true
  validates :weight, numericality: { greater_than_or_equal_to: 0 }

  belongs_to :product_category
end
