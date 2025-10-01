class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new

    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: [
          turbo_stream.replace("new_post_frame", partial: "new_post_form")
      ]
      end
    end
  end

  def create
    @post = Post.new(post_params)
    @post.save

    respond_to do |format|
      format.turbo_stream { render turbo_stream: turbo_stream.append("posts_frame", @post) }
    end
  end

  private

  def post_params
    params[:post].permit(:title, :dscr)
  end
end
