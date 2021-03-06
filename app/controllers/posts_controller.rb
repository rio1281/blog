class PostsController < ApplicationController
  before_action :set_post, only: [:show]

  # GET /posts/1
  # GET /posts/1.json
  def show
    @comments = @post.comments
    @comment = Comment.new
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

end
