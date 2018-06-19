class StoriesController < ApplicationController

  def index
    @stories = Story.all

  end
  def new
    @story = Story.new

  end
  def show
    @story = Story.find(params[:id])
  end

  def create
    story_data = params.require(:story).permit(:title, :body, :author)
    @story = Story.new
    @story.save
    redirect_to @story
  end
  def edit
    @story = Story.find(params[:id])

  end
  def update
    story_data = params.require(:story).permit(:title, :body, :author)
    @story = Story.find(params[:id])
    @story.update(story_data)
    redirect_to @story
  end
  def destroy
    @story = Story.find(params[:id])
    @story.destroy
    redirect_to storys_path
  end
end
