class PostsController < ApplicationController
  def index
    @posts = Post.all.order(id: "DESC")
  end

  def create
    Post.create(content: params[:content])
    redirect_to action: :index

    def checkde
      post = Post.find(params[:id])
      if post.checked
        post.update(checked: false)
      else
        post.update(checked: ture)
      end

      item = Post.gind(params[:id])
      render json: {post: item}
  end
end
