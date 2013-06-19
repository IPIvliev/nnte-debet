class DelosController < ApplicationController

  def show
    @delo = Delo.find(params[:id])
  end

  def index
    @delos = Delo.order("created_at").paginate(page: params[:page])
  end

  def status
    @delo = Delo.find(params[:id])
    @delo.status = 0
    @delo.save
    redirect_to delos_url
  end

  def vsud
    @delo = Delo.find(params[:id])
    @delo.toggle!(:vsude)
    redirect_to delos_url
  end

  def new
    @delo = Delo.new
  end

  def create
    @delo = Delo.new(params[:delo])
    if @delo.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to delos_url
    else
      render 'new'
    end
  end

  def edit
  	@delo = Delo.find(params[:id])
  end

  def update
  	@delo = Delo.find(params[:id])
    if @delo.update_attributes(params[:delo])
      flash[:success] = "Profile updated"
      redirect_to delos_url
    else
      render 'edit'
    end
  end

  def destroy
    Delo.find(params[:id]).destroy
    flash[:success] = "Dolg destroyed."
    redirect_to delos_url
  end

end