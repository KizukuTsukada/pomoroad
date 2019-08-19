class GroupsController < ApplicationController

  def index
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
  end

  def destroy
  end
end
