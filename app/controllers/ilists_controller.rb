class IlistsController < ApplicationController

  def show
    @ilist = Ilist.find(params[:id])
  end

  def index
    @ilists = Ilist.paginate(page: params[:page])

  end

  def new
    @ilist = Ilist.new
  end

  def create
    @ilist = Ilist.new(params[:ilist])
    if @Ilist.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to ilists_url
    else
      render 'new'
    end
  end

  def edit
  	@ilist = Ilist.find(params[:id])
  end

  def update
  	@ilist = Ilist.find(params[:id])
    if @ilist.update_attributes(params[:ilist])
      flash[:success] = "Profile updated"
      redirect_to ilists_url
    else
      render 'edit'
    end
  end

  def destroy
    Ilist.find(params[:id]).destroy
    flash[:success] = "Agent destroyed."
    redirect_to ilists_url
  end

end