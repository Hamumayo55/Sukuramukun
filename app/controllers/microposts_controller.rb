class MicropostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @micropost = Micropost.all
    @micropost_new = Micropost.new
    @username = current_user.username
  end

  def show
    @micropost = Micropost.find_by(params[:id])
    if @micropost.nil?
      redirect_to '/'
    end
  end

  def new
    @micropost = Micropost.new
    @username = current_user.username
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
    logger.debug(@micropost)
    @micropost.destroy
    redirect_to microposts_path
  end

  private
  
  def micropost_params
    params.require(:micropost).permit(:content, :username)
  end
end
