class Worker < ActiveRecord::Base
  belongs_to :job
  belongs_to :title

  validates :job_id, :title_id, presence: true

  default_scope { order("workers.weight ASC") }

  scope :dentists,          -> { joins(:job).where("category = 'dentist'") }
  scope :hygienists,        -> { joins(:job).where("category = 'hygienist'") }
  scope :practice_managers, -> { joins(:job).where("category = 'manager' OR category = 'treatment-coordinator'") }
  scope :nurses,            -> { joins(:job).where("category = 'nurse'") }
  scope :receptionists,     -> { joins(:job).where("category = 'receptionist'") }
  scope :doctors,           -> { joins(:job).where("category = 'doctor'") }

  # mount_uploader :avatar, AvatarUploader

  def name
    "#{title} #{firstname} #{lastname}"
  end

  def specialist?
    %w(dentist hygienists managers).include?(job.category)
  end
end
