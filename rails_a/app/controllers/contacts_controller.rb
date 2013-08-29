class ContactsController < ApplicationController

  def index
    @contacts = Contact.all.order('created_at DESC')
  end

  def show
    @contact = Contact.find params[:id]
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    Contact.transaction do
      @contact.save!
    end
  end

  def edit
    @contact = Contact.find params[:id]
  end

  def update
    @contact = Contact.find params[:id]

    Contact.transaction do
      @contact.update_attributes!(contact_params)
    end
  end

  def destroy
    @contact = Contact.find params[:id]
    Contact.transaction do
      @contact.destroy!
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :phone)
  end

end
