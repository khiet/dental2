class Job < ApplicationRecord
  JOB_CATEGORIES = %w(dentist hygienist nurse manager receptionist treatment-coordinator doctor)

  has_many :workers

  validates :category, inclusion: JOB_CATEGORIES

  def to_s
    title
  end
end
