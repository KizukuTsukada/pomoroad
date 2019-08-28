class PostsController < ApplicationController
  before_action :set_group

  def index
    @user = User.find_by(params[:user_id])
    @post = Post.new
    @posts = @group.posts.includes(:user).order(id: "DESC").page(params[:page]).per(10)
  end

  def create
    @post = @group.posts.new(post_params)
    if @post.content.length > 0
      @post.save
      respond_to do |format|
        format.json
      end
    else
      redirect_to group_post_path
    end  
  end

  def new
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:content).merge(user_id: current_user.id)
  end
  
  def set_group
    @group = Group.find(params[:group_id])
  end
end
