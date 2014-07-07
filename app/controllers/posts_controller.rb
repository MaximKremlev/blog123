class PostsController < ApplicationController
  before_filter :find_post, except: [:index, :new]

  def new
    @post = Post.new()
  end

  def index
    @posts = Post.all
  end

  def update
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    @post.save ? redirect_to(@post) : render('new')
  end

  def destroy
    @post.destroy

    redirect_to posts_path
  end

  def show
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :text, :like)
  end
end
