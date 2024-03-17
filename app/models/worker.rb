class Worker < ActiveRecord::Base
  belongs_to :job
  belongs_to :title

  validates :job_id, :title_id, presence: true

  default_scope { order("workers.weight ASC") }

  scope :dentist,          -> { joins(:job).where("category = 'dentist'") }
  scope :hygienist,        -> { joins(:job).where("category = 'hygienist'") }
  scope :practice_manager, -> { joins(:job).where("category = 'manager' OR category = 'treatment-coordinator'") }
  scope :nurse,            -> { joins(:job).where("category = 'nurse'") }
  scope :receptionist,     -> { joins(:job).where("category = 'receptionist'") }
  scope :doctor,           -> { joins(:job).where("category = 'doctor'") }

  mount_uploader :avatar, AvatarUploader

  def name
    "#{title} #{firstname} #{lastname}"
  end

  def specialist?
    %w(dentist hygienists managers).include?(job.category)
  end
end
