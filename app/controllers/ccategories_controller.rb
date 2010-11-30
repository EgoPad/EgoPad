class CcategoriesController < ApplicationController
  def index
    @ccategories = Ccategory.all
  end
  
  def show
    @ccategory = Ccategory.find(params[:id])
  end
  
  def new
    @ccategory = Ccategory.new
  end
  
  def create
    @ccategory = Ccategory.new(params[:ccategory])
    if @ccategory.save
      flash[:notice] = "Successfully created ccategory."
      redirect_to @ccategory
    else
      render :action => 'new'
    end
  end
  
  def edit
    @ccategory = Ccategory.find(params[:id])
  end
  
  def update
    @ccategory = Ccategory.find(params[:id])
    if @ccategory.update_attributes(params[:ccategory])
      flash[:notice] = "Successfully updated ccategory."
      redirect_to @ccategory
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @ccategory = Ccategory.find(params[:id])
    @ccategory.destroy
    flash[:notice] = "Successfully destroyed ccategory."
    redirect_to ccategories_url
  end
end
