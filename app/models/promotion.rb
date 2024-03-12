class Promotion < ActiveRecord::Base
  attr_accessible :active, :title, :document

  validates :title, presence: true

  scope :active, -> { where active: true }

  mount_uploader :document, DocumentUploader
end
