class Contact < ApplicationRecord
  validates :name, :email, :phone, :message, presence: true
  validate :consent_is_checked
  validates :email, format: { with: Devise.email_regexp }, allow_blank: true

  private

  def consent_is_checked
    return if ActiveModel::Type::Boolean.new.cast(consent)

    errors.add(:consent, 'must be granted')
  end
end
