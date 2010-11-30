class TasksCategoriesController < ApplicationController
  def index
    @tasks_categories = TasksCategory.all
  end
  
  def show
    @tasks_category = TasksCategory.find(params[:id])
  end
  
  def new
    @tasks_category = TasksCategory.new
  end
  
  def create
    @tasks_category = TasksCategory.new(params[:tasks_category])
    if @tasks_category.save
      flash[:notice] = "Successfully created tasks category."
      redirect_to @tasks_category
    else
      render :action => 'new'
    end
  end
  
  def edit
    @tasks_category = TasksCategory.find(params[:id])
  end
  
  def update
    @tasks_category = TasksCategory.find(params[:id])
    if @tasks_category.update_attributes(params[:tasks_category])
      flash[:notice] = "Successfully updated tasks category."
      redirect_to @tasks_category
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @tasks_category = TasksCategory.find(params[:id])
    @tasks_category.destroy
    flash[:notice] = "Successfully destroyed tasks category."
    redirect_to tasks_categories_url
  end
end
