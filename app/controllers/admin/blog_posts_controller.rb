class Admin::BlogPostsController < ApplicationController
  before_action :is_admin?

  def new
    @blog_post = BlogPost.new
  end

  def create
    @blog_post = BlogPost.new(blog_post_params)

    if @blog_post.save
      flash[:notice] = "Blog Post Created!"
      redirect_to blog_posts_path
    else
      flash[:notice] = "An Error Occurred!"
      redirect to :new
    end
  end

  private
  def blog_post_params
    params.require(:blog_post).permit(:title, :body, :user_id)
  end
end
