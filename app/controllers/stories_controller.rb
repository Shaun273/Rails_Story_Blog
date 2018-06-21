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
    @story = Story.new(story_data)

    respond_to do |format|
      if @story.save

        format.html{redirect_to @story, notice: 'Story was created'}
      else
        format.html{render :new, notice: 'Story'}
      end
    end
  end
  def edit
    @story = Story.find(params[:id])

  end
  def update
    @story = Story.find(params[:id])

    respond_to do |format|
      if @story.update(story_data)

        format.html{redirect_to @story, notice: 'Story was updated'}
      else
        format.html{render :edit, notice: 'Story'}
      end
    end
  end
  def destroy
    @story = Story.find(params[:id])
    @story.destroy
    redirect_to stories_path
  end

  def story_data
    story_data = params.require(:story).permit(:title, :body, :author)
  end
end
