class PostsController < ApplicationController
def index
  @posts = Post.all
end

def create
  @post = Post.new
  @post.body = params["body"]
  @posts.user_id = @current_user["user_id"]
  @post.save
  redirect_to "/posts"
end

end
