class ListsController < ApplicationController
  def index
  end

  def new
    @list = current_user.lists.build
  end

  def create
    @list = current_user.lists.build(strong_params)
    redirect_to @list if @list.save
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
    @list = current_user.lists.find(params[:id])
  end

  def update
    @list = current_user.lists.build(strong_params)
    redirect_to lists_url if @list.save
  end

  def destroy
  end

  def strong_params
    params.require(:list).permit(:content)
  end
end
