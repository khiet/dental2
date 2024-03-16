class Title < ActiveRecord::Base
  has_many :workers

  def to_s
    title
  end
end
