class UsersController < ApplicationController
  def index
     #@users = User.all
     #@users = User.paginate(page: params[:page])
     #@users = User.paginate(page: params[:page], :per_page => 1)
     @users = User.all.page(params[:page]).per(5)
  end

  def show
    @user = User.find_by id: params[:id]
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:success] = "Register success"
      redirect_to users_path
    else
      flash[:success] = "Tên đăng nhâp đã tồn tại hoặc bạn bỏ trống"
      render :new
    end
  end

def edit
    @user = User.find(params[:id])
  end

def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      # Handle a successful update.
      redirect_to users_path
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end


  private
  def user_params
    params.require(:user).permit :name, :password, :password_confirmation
  end
end
