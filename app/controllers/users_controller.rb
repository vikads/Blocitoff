class UsersController < ApplicationController

  def show
    # @user = User.find(params[:id])
    # # @user = User.find_by(id: session[:user_id])
    # # @item = Item.find_by(id: session[:user_id])
    # @item = @user.items

    if params[:id]
      @user = User.find(params[:id])
    else
      @user = current_user
    end

    @items = @user.items

  end
end
