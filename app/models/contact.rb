class Contact
  include ActiveModel::Model

  attr_accessor :name, :email, :phone, :message, :consent

  validates :name, :email, :phone, :message, :consent, presence: true
  validate :consent_is_checked
  validates :email, format: { with: Devise.email_regexp }

  private

  def consent_is_checked
    return if ActiveModel::Type::Boolean.new.cast(consent)

    errors.add(:consent, 'must be checked')
  end
end
