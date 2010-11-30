class TcategoriesController < ApplicationController
  def index
    @tcategories = Tcategory.all
  end
  
  def show
    @tcategory = Tcategory.find(params[:id])
  end
  
  def new
    @tcategory = Tcategory.new
  end
  
  def create
    @tcategory = Tcategory.new(params[:tcategory])
    if @tcategory.save
      flash[:notice] = "Successfully created tcategory."
      redirect_to @tcategory
    else
      render :action => 'new'
    end
  end
  
  def edit
    @tcategory = Tcategory.find(params[:id])
  end
  
  def update
    @tcategory = Tcategory.find(params[:id])
    if @tcategory.update_attributes(params[:tcategory])
      flash[:notice] = "Successfully updated tcategory."
      redirect_to @tcategory
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @tcategory = Tcategory.find(params[:id])
    @tcategory.destroy
    flash[:notice] = "Successfully destroyed tcategory."
    redirect_to tcategories_url
  end
end
