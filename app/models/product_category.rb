class ProductCategory < ApplicationRecord
  validates :name, presence: true
  validates :weight, numericality: { greater_than_or_equal_to: 0 }

  has_many :products, dependent: :destroy

  default_scope { order('weight DESC') }
end
