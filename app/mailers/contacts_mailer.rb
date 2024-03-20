class ContactsMailer < ApplicationMailer

  def form_submission
    @name    = params[:name]
    @email   = params[:email]
    @phone   = params[:phone]
    @message = params[:message]

    mail(subject: "✉️  #{@name} contacted us ✉️ ")
  end
end
