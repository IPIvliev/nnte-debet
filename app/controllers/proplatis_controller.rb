class ProplatisController < ApplicationController

  def show
    @proplati = Proplati.find(params[:id])
  end

  def index
    @proplatis = Proplati.paginate(page: params[:page])

  end

  def new
    @proplati = Proplati.new
  end

  def create
    @proplati = Proplati.new(params[:proplati])
    if @proplati.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to finances_url
    else
      render 'new'
    end
  end

  def edit
  	@proplati = Proplati.find(params[:id])
  end

  def update
  	@proplati = Proplati.find(params[:id])
    if @proplati.update_attributes(params[:proplati])
      flash[:success] = "Profile updated"
      redirect_to proplatis_url
    else
      render 'edit'
    end
  end

  def destroy
    Proplati.find(params[:id]).destroy
    flash[:success] = "Agent destroyed."
    redirect_to proplatis_url
  end

end