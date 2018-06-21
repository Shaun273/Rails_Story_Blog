class CommentsController < ApplicationController
  before_action :set_story

  def create
    @comment = @story.comments.create(comment_params)
    redirect_to @story

  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to @story
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to stories_path
  end

  def set_story
    @story = Story.find(params[:story_id])
  end

  def comment_params
    comment_data = params.require(:comment).permit(:name, :content)
  end
end
