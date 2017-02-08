class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @list = @user.lists.new(list_params)
  end

  def create
    @user = User.find(params[:user_id])
    @list = @user.lists.new(list_params)
    if @list.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    if @list.update(list_params)
      redirect_to list_path(@list)
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @list = List.find(params[:id])
    @list.destroy
    redirect_to user_path(@user)
  end

private
  def list_params
    params.require(:list).permit(:name)
  end
end
