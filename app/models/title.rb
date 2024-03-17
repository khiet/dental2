class Title < ApplicationRecord
  has_many :workers

  def to_s
    title
  end
end
