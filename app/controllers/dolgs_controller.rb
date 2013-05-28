class DolgsController < ApplicationController

  def show
    @dogovor = Dogovor.find(params[:id])
  end

  def index
    @dolgs = Dolg.paginate(page: params[:page])
  end

  def new
    @dolg = Dolg.new
  end

  def create
    @dolg = Dolg.new(params[:dolg])
    if @dolg.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to finances_url
    else
      render 'new'
    end
  end

  def edit
  	@dogovor = Dogovor.find(params[:id])
  end

  def update
  	@dogovor = Dogovor.find(params[:id])
    if @dogovor.update_attributes(params[:dogovor])
      flash[:success] = "Profile updated"
      redirect_to houses_url
    else
      render 'edit'
    end
  end

  def destroy
    Dogovor.find(params[:id]).destroy
    flash[:success] = "Agent destroyed."
    redirect_to dogovors_url
  end

end
