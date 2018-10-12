class ItemsController < ApplicationController

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user

    if @item.save
      flash[:notice] = "To-Do item was saved."
      redirect_to root_path
    else
      flash.now[:alert] = "There was a problem with saving To-Do item. Try again."
    render :new
    end

  end

  def destroy
    @item = Item.find(params[:id])
    # @item = Item.find_by(id: session[:user_id])
    unless @item.destroy
      flash.now[:alert] = "Error occured while deleting the To-Do."
    end
    redirect_to root_path
  end


  private

  def item_params
    params.require(:item).permit(:name)
  end

end
