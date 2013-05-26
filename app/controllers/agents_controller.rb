class AgentsController < ApplicationController

  def show
    @agent = Agent.find(params[:id])
    @houses = @agent.houses
    @dogovors = @agent.dogovors
    @dogovor = Dogovor.all
  end

  def index
    @agents = Agent.paginate(page: params[:page])

  end

  def new
    @agent = Agent.new
  end

  def create
    @agent = Agent.new(params[:agent])
    if @agent.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @agent
    else
      render 'new'
    end
  end

  def edit
  	@agent = Agent.find(params[:id])
  end

  def update
  	@agent = Agent.find(params[:id])
    if @agent.update_attributes(params[:agent])
      flash[:success] = "Profile updated"
      redirect_to @agent
    else
      render 'edit'
    end
  end

  def destroy
    Agent.find(params[:id]).destroy
    flash[:success] = "Agent destroyed."
    redirect_to agents_url
  end

end
