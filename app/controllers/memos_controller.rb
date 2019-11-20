class MemosController < ApplicationController

  def index
    @memo = Memo.all
    @username = current_user.username
  end
  
  def create
    Memo.create(memo_params)
    redirect_to memos_path
  end
  
  def new
    @memo = Memo.new
    @username = current_user.username
  end

  def edit
    @memo = Memo.find(params[:id])
  end

  def show
    @memo = Memo.find_by(id: params[:id])
    if @memo.nil?
      redirect_to '/'
    end
  end

  def update
    @memo.update(memo_params)
    redirect_to memos_path
  end

  def destroy
    @memo.destroy
    redirect_to memos_path
  end

  private
  
  def memo_params
    params.require(:memo).permit(:content, :username, :step_number)
  end

  def ensure_correct_user
    @memo = Memo.find(params[:id])
    if @memo.username != current_user.username
      flash[:notice] = "権限がありません"
      redirect_to memos_path
    end
  end
end
