class MicropostsController < ApplicationController
  def index
    if user_signed_in?
      @micropost = Micropost.all
      @micropost_new = Micropost.new
      @username = current_user.username
    else 
      redirect_to '/'
    end
  end

  def show
    @micropost = Micropost.find(params[:id])
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
