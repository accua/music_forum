class ItemsController < ApplicationController
  def show
    @item = Item.find(params[:id])
  end

  def new
    @user = User.find(params[:id])
    @item = @user.items.new
  end

  def create
    @user = User.find(params[:user_id])
    @item = @user.items.new(item_params)
    if @item.save
      redirect_to user_items_path(@user)
    else
      render :new
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to user_items_path(@user)
    else
      render :new
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to user_items_path(@user)
  end

private
  def item_params
    params.require(:item).permit(:artist, :title, :link)
  end
end
