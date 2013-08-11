class ContactsController < ApplicationController

  def index
    @contacts = Contact.find(:all)
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(
      name:     params[:name],
      age:      params[:age],
      address:  params[:address],
      phone:    params[:phone],
      email:    params[:email]
    )
    @contact.save
  end

  def show
  end

  def destroy
  end

  def edit
  end

  def update
  end

end

