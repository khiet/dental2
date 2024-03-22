class ContactsMailer < ApplicationMailer
  def form_submission
    @contact = params[:contact]

    mail(subject: "✉️  #{@contact.email} contacted us ✉️ ")
  end
end
