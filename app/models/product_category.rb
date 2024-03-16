class ProductCategory < ActiveRecord::Base
  validates :name, presence: true
  validates_numericality_of :weight

  has_many :products, dependent: :destroy

  default_scope { order('weight DESC') }
end
