class HousesController < ApplicationController

  def show
    @house = House.find(params[:id])
  end

  def index
    @houses = House.paginate(page: params[:page])
  #  @house = House.find(params[:id])
 #   @agent = house.agent
  end

  def new
    @house = House.new
  end

  def create
    @house = House.new(params[:house])
    if @house.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to houses_url
    else
      render 'new'
    end
  end

  def edit
  	@house = House.find(params[:id])
  end

  def update
  	@house = House.find(params[:id])
    if @house.update_attributes(params[:house])
      flash[:success] = "Profile updated"
      redirect_to houses_url
    else
      render 'edit'
    end
  end

  def destroy
    House.find(params[:id]).destroy
    flash[:success] = "Agent destroyed."
    redirect_to houses_url
  end

end
