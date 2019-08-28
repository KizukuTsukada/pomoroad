class UsersController < ApplicationController

  before_action :set_user, only:[:show, :edit, :update] 

  def show
  end
  
  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to mypage_path
    else
      render :edit
    end
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :image)
  end

  def set_user
    @user = User.find_by(id: params[:id])
    @counts = Post.where(user_id: @user.id).count
  end
end