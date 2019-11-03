class MicropostsController < ApplicationController
  def index
    @micropost = Micropost.all
    @micropost_new = Micropost.new
    @username = current_user.username
  end

  def show
    @micropost = Micropost.find(params[:id])
  end

  def new
    @micropost = Micropost.new
    @usename = current_user.username
  end

  def edit
    @micropost = Micropost.find(params[:id])
  end

  def create
    Micropost.create(micropost_params)
    redirect_to microposts_path
  end

  def update
    micropost = Micropost.find(params[:id])
    micropost.update(micropost_params)
    redirect_to microposts_path
  end

  def destroy
    @micropost = Micropost.find(params[:id])
    @micropost.destroy
    redirect_to microposts_path
  end

  private
  
  def micropost_params
    params.require(:micropost).permit(:content, :username)
  end
end
