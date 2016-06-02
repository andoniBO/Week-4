class ContactsController < ApplicationController
  def index
    @contacts = Contact.get_all_contacts
  end

  def new
    # if params[:name] == nil && params[:address] == nil
    #   @message = "Name and address should not be empty"
    # end
  end

  def create
    contact = Contact.new(
      :name => params[:contact][:name],
      :address => params[:contact][:address],
      :phone_number => params[:contact][:phone_number],
      :email => params[:contact][:email])
    Contact.create_contact(contact)
    redirect_to('/contacts')
  end

  def show
    @contact = Contact.find_by_id(params[:id])
  end

  def favorites
    contact = Contact.find_by_id(params[:id])
    contact.make_favorite
    #binding.pry
    contact.save
    redirect_to('/favorites')
  end

  def showfavorites
    @favorites = Contact.get_favorites
  end

  def search
    @searchresults = Contact.make_search(params[:search])
    render 'searchresults'
  end

end
