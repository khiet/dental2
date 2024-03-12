class Product < ActiveRecord::Base
  attr_accessible :name, :price, :weight, :product_category_id

  validates :name, :price, presence: true
  validates_numericality_of :weight

  belongs_to :product_category

  default_scope { order('weight DESC') }
end
