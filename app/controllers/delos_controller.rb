class DelosController < ApplicationController

  def show
    @delo = Delo.find(params[:id])
  end

  def index
    @delos = Delo.order("created_at").paginate(page: params[:page])
  end

  def new
    @dolg = Delo.new
  end

  def create
    @dolg = Delo.new(params[:delo])
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
    if @Delo.update_attributes(params[:delo])
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