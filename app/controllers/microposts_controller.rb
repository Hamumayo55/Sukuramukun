class MicropostsController < ApplicationController
  def index
    @micropost = Micropost.all
    @micropost_new = Micropost.new
  end

  def show
    @micropost = Micropost.find(params[:id])
  end

  def new
    @micropost = Micropost.new
  end

  def edit
    @micropost = Micropost.find(params[:id])
  end

  def create
    Micropost.create(micropost_params)
    redirect_to '/'
  end

  def update
    micropost = Micropost.find(params[:id])
    micropost.update(micropost_params)
    redirect_to '/'
  end

  def destroy
    @micropost = Micropost.find(params[:id])
    @micropost.destroy
    redirect_to '/'
  end

  private
  
  def micropost_params
    params.require(:micropost).permit(:content)
  end
end
