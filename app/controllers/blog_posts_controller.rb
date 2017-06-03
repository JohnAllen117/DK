class BlogPostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @blog_posts = BlogPost.all
  end

  def show
    @blog_post = BlogPost.find_by(id: params[:id])
  end
end
