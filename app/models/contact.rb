class Contact
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend  ActiveModel::Naming

  attr_accessor :name, :email, :phone, :content, :consent
  attr_reader :attributes

  validates_presence_of :name, :email, :phone, :content
  validates_format_of   :email, with: Devise::email_regexp
  validates_length_of   :content, maximum: 256

  validate :consent_checked

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
    @attributes = attributes
  end

  def persisted?
    false
  end

  LABEL = { name:    "Your name",
            email:   "Email address",
            phone:   "Telephone",
            content: "Contents" }

  def error_messages
    {}.tap do |error_messages|
      errors.messages.each do |k, v|
        error_messages[k] = "#{LABEL[k]} #{v.first}"
      end
    end
  end

  private

  def consent_checked
    if consent == '0'
      errors.add(:consent, 'must be checked')
    end
  end
end
