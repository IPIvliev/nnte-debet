class FinancesController < ApplicationController

  def show
    @dogovor = Dogovor.find(params[:id])
  end

  def index
    @comsum = Dolg.sum('sum')
  end

  def new
    @dogovor = Dogovor.new
  end

  def create
    @dogovor = Dogovor.new(params[:dogovor])
    if @dogovor.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to dogovors_url
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
