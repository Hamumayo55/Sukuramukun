class MicropostsController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_correct_user, only: [:edit, :update, :destroy]
  def index
    @micropost = Micropost.all
    @micropost_new = Micropost.new
    @username = current_user.username
  end

  def show
    @micropost = Micropost.find_by(id: params[:id])
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
    @micropost.update(micropost_params)
    redirect_to microposts_path
  end

  def destroy
    @micropost.destroy
    redirect_to microposts_path
  end

  private
  
  def micropost_params
    params.require(:micropost).permit(:content, :username)
  end

  def ensure_correct_user
    @micropost = Micropost.find(params[:id])
    if @micropost.username != current_user.username
      flash[:notice] = "権限がありません"
      redirect_to microposts_path
    end
  end

end
