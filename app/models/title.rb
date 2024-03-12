class Title < ActiveRecord::Base
  attr_accessible :title

  has_many :workers

  def to_s
    title
  end
end
