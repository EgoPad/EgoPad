class ContactsCategoriesController < ApplicationController
  def index
    @contacts_categories = ContactsCategory.all
  end
  
  def show
    @contacts_category = ContactsCategory.find(params[:id])
  end
  
  def new
    @contacts_category = ContactsCategory.new
  end
  
  def create
    @contacts_category = ContactsCategory.new(params[:contacts_category])
    if @contacts_category.save
      flash[:notice] = "Successfully created contacts category."
      redirect_to @contacts_category
    else
      render :action => 'new'
    end
  end
  
  def edit
    @contacts_category = ContactsCategory.find(params[:id])
  end
  
  def update
    @contacts_category = ContactsCategory.find(params[:id])
    if @contacts_category.update_attributes(params[:contacts_category])
      flash[:notice] = "Successfully updated contacts category."
      redirect_to @contacts_category
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @contacts_category = ContactsCategory.find(params[:id])
    @contacts_category.destroy
    flash[:notice] = "Successfully destroyed contacts category."
    redirect_to contacts_categories_url
  end
end
