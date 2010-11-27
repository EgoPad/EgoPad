class NotesController < ApplicationController
  def index
    @notes = Notes.all
  end
  
  def show
    @notes = Notes.find(params[:id])
  end
  
  def new
    @notes = Notes.new
  end
  
  def create
    @notes = Notes.new(params[:notes])
    if @notes.save
      flash[:notice] = "Successfully created notes."
      redirect_to @notes
    else
      render :action => 'new'
    end
  end
  
  def edit
    @notes = Notes.find(params[:id])
  end
  
  def update
    @notes = Notes.find(params[:id])
    if @notes.update_attributes(params[:notes])
      flash[:notice] = "Successfully updated notes."
      redirect_to @notes
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @notes = Notes.find(params[:id])
    @notes.destroy
    flash[:notice] = "Successfully destroyed notes."
    redirect_to notes_url
  end
end
