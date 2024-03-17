class Promotion < ApplicationRecord
  validates :title, presence: true

  scope :active, -> { where active: true }

  mount_uploader :document, DocumentUploader
end
