class ContactsController < ApplicationController
  def create
    @contact = Contact.new(contact_param)

    if @contact.valid?
      # ContactService.send_email_to_sunbury(@contact)
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
