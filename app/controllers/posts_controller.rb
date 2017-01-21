class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
    @post = Post.new
    #Allow us to create a new post inside of our form
  end

  def create
    #we define post params in a private method
    @post = Post.new post_params

    if @post.save
      # if the post is able to save, let's redirect
      redirect_to @post, notice: "Hey Sarah, you saved the post!"
    else
      render 'new', notice: "Oh now, Sarah! I was not able to save your post!"
    end
  end

    def show
    end

    def edit
      #will allow us to edit the post
    end

    def update
      if @post.update post_params
        redirect_to @post, notice: "YAY, article Saved!"
      else
        render 'edit'
      end
    end

    def destroy
      @post.destroy
      redirect_to posts_path
    end

  private

    def post_params
      params.require(:post).permit(:title, :content, :slug)
    end

    def find_post
      @post = Post.friendly.find(params[:id])
    end
end
