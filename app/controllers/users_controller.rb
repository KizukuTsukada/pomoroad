class UsersController < ApplicationController

  def edit
  end

  def update 
    if current_user.update(user_params)
      redirect_to mypage_path
    else
      render :edit
    end
  end

  def index
  end

  def show
    @user = User.find_by(id: params[:id])
    @counts = Post.where(user_id: @user.id).count
  end

  private

  def user_params
    params.require(:user).permit(:email, :name, :image)
  end
end