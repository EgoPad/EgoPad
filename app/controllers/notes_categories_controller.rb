class NotesCategoriesController < ApplicationController
  def index
    @notes_categories = NotesCategory.all
  end
  
  def show
    @notes_category = NotesCategory.find(params[:id])
  end
  
  def new
    @notes_category = NotesCategory.new
  end
  
  def create
    @notes_category = NotesCategory.new(params[:notes_category])
    if @notes_category.save
      flash[:notice] = "Successfully created notes category."
      redirect_to @notes_category
    else
      render :action => 'new'
    end
  end
  
  def edit
    @notes_category = NotesCategory.find(params[:id])
  end
  
  def update
    @notes_category = NotesCategory.find(params[:id])
    if @notes_category.update_attributes(params[:notes_category])
      flash[:notice] = "Successfully updated notes category."
      redirect_to @notes_category
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @notes_category = NotesCategory.find(params[:id])
    @notes_category.destroy
    flash[:notice] = "Successfully destroyed notes category."
    redirect_to notes_categories_url
  end
end
