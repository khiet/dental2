class Promotion < ActiveRecord::Base
  validates :title, presence: true

  scope :active, -> { where active: true }

  mount_uploader :document, DocumentUploader
end
