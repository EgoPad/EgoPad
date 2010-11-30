class NcategoriesController < ApplicationController
  def index
    @ncategories = Ncategory.all
  end
  
  def show
    @ncategory = Ncategory.find(params[:id])
  end
  
  def new
    @ncategory = Ncategory.new
  end
  
  def create
    @ncategory = Ncategory.new(params[:ncategory])
    if @ncategory.save
      flash[:notice] = "Successfully created ncategory."
      redirect_to @ncategory
    else
      render :action => 'new'
    end
  end
  
  def edit
    @ncategory = Ncategory.find(params[:id])
  end
  
  def update
    @ncategory = Ncategory.find(params[:id])
    if @ncategory.update_attributes(params[:ncategory])
      flash[:notice] = "Successfully updated ncategory."
      redirect_to @ncategory
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @ncategory = Ncategory.find(params[:id])
    @ncategory.destroy
    flash[:notice] = "Successfully destroyed ncategory."
    redirect_to ncategories_url
  end
end
