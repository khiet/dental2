# Preview all emails at http://localhost:3000/rails/mailers/contacts_mailer
class ContactsMailerPreview < ActionMailer::Preview
  def form_submission
    ContactsMailer.with(
      name: 'Foo',
      email: 'foo@bar.com',
      phone: '+447811111111',
      message: 'Hello World!'
    ).form_submission
  end

  private

  def contact
    @contact ||= Contact.last
  end
end
