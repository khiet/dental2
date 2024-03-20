class ApplicationMailer < ActionMailer::Base
  default from: 'post@sunburydental.co.uk'
  default to:   'post@sunburydental.co.uk'

  layout "mailer"
end
