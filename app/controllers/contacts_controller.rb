class ContactsController < ApplicationController
  def create
    @contact = Contact.new(contact_param)

    if @contact.valid?
      ContactsMailer.with(
        name: @contact.name,
        email: @contact.email,
        phone: @contact.phone,
        message: @contact.message
      ).form_submission.deliver_now
    end

    render
  end

  private

  def contact_param
    params.require(:contact).permit(
      :name,
      :email,
      :phone,
      :message,
      :consent
    )
  end
end
