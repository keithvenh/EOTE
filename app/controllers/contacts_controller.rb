class ContactsController < ApplicationController
  def index
    @friend = Contact.where("warmth > ?", 1).order('warmth DESC')
    @neut = (Contact.where("warmth > ?", -2).where("warmth < ?", 2)).order('warmth DESC')
    @enemy = Contact.where("warmth < ?", -1).order('warmth DESC')

  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to @contact
    else
      render 'new'
    end
  end

  def new
    @characters = Character.all.order('name ASC')
    @planets = Planet.all.order('name ASC')
    @contact = Contact.new
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def edit
    @characters = Character.all.order('name ASC')
    @planets = Planet.all.order('name ASC')
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update_attributes(contact_params)
      redirect_to @contact
    else
      render 'edit'
    end
  end

  def destroy
    Contact.find(params[:id]).destroy
    redirect_to contacts_url
  end

  private

    def contact_params
      params.require(:contact).permit(:character_id, :last_known_location, :planet_id, :details, :warmth)
    end
end