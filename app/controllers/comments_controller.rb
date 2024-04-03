class CommentsController < ApplicationController
  # before_action :authenticate_user!
  before_action :find_film, only: :create
  before_action :find_comment, except: :create

  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      redirect_to film_path(@film)
    end
  end
  
  private

  def comment_params
    params.require(:comment).permit(:body)
    .merge!(commentable: find_film, user: current_user)
  end

  def find_film
    @film = Film.find(params[:film_id])
  end
end
