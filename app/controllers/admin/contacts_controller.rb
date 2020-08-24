class Admin::ContactsController < ApplicationController
  before_action :authenticate_admin!

  def index
  	@contacts = Contact.all
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    @contact.update(contact_params)
    redirect_to admin_contacts_path
  end

  private
  def contact_params
    params.require(:contact).permit(:contact_status)
  end

end
