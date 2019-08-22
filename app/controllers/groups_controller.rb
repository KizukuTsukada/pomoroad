class GroupsController < ApplicationController
  before_action :set_group, only: [:edit, :update]

  def index
    @user = User.find_by(id: params[:id])
  end


  def new
    @group = Group.new
    @user = User.find_by(id: params[:id])
  end

  def create
    @group = current_user.groups.new(group_params)
    if @group.save
      redirect_to("/users/#{current_user.id}")
      flash[:notice] = "カリキュラムを追加しました"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @group.update(group_params)
      redirect_to("/users/#{current_user.id}")
      flash[:notice] = "カリキュラムを編集しました"
    else
      render :edit
    end
  end

  def destroy
    group = Group.find(params[:id])
    if group.user_id == current_user.id
      group.destroy
      redirect_to("/users/:id")
    end
  end

  private
  def group_params
    params.require(:group).permit(:name)
  end

  def set_group
    @group = Group.find(params[:id])
  end
end
