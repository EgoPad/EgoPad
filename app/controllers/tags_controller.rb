class TagsController < ApplicationController

  def notes
    @tag = params[:name]
    @results = Note.tagged_with(params[:name])
  end

  def show
    @tag = Tag.find(params[:id])
  end

end
