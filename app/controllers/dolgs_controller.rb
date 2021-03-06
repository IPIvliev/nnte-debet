class DolgsController < ApplicationController

  def show
    @dogovor = Dogovor.find(params[:id])
  end

  def index
    @dolgs = Dolg.order("created_at").paginate(page: params[:page])

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
  	@dolg = Dolg.find(params[:id])
  end

  def update
  	@dolg = Dolg.find(params[:id])
    if @dolg.update_attributes(params[:dolg])
      flash[:success] = "Profile updated"
      redirect_to dolgs_url
    else
      render 'edit'
    end
  end

  def destroy
    Dolg.find(params[:id]).destroy
    flash[:success] = "Dolg destroyed."
    redirect_to dolgs_url
  end

end
