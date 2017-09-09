class CommentsController < ApplicationController

before_action :set_post
before_action :set_comment, only: [:edit, :update, :destroy]

  # def index
  # end

  # def show
  # end

  def new
    @comment = Comment.new
  end

  def create
    @comment = @post.comments.new(comment_params)
    if comment.save
      redirect_to topic_path(@topic)
    else
      render :new
    end
  end

  def edit
    render partial: "form"
  end

  def update
    if @comment.update(comment_params)
      redirect_to [@post]
    else
      render partial: "form"
    end
  end

  def destroy
    @comment.destroy
    redirect_to post_path(@post)
  end

  private
    def set_post
      @post = Post.find(params[:post_id])
    end

    def set_comment
      @comment = Comment.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:message)
    end
end
