class UsersController < ApplicationController

  before_action :require_signin, except: [:new, :create]

  before_action :require_correct_user, only: [:edit, :update, :destroy]

  def index
    @users = User.all
    @page = "showing all users"
  end

  def show
    @user = User.find(params[:id])
    @reviews = @user.reviews
    @favourite_movies = @user.favourite_movies
    @page = "showing #{@user.name.titleize}'s profile"
  end

  def new
    @user = User.new
    @page = "creating a new Movie Studios account"
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      msg = UserMailer.welcome_email(@user)
      msg.deliver_now
      redirect_to user_path(@user), notice: "You are now part of the Movie Studios family!"
    else
      render :new
    end
  end

  def edit
    @page = "editing your account"
  end

  def update
    @user.update(user_params) ? (redirect_to @user, notice: "Your profile has been successfully updated!") : (render :edit)
  end

  def destroy
    @user.destroy
    session[:user_id] = nil
    redirect_to root_path, alert: "Your profile has been successfully deleted!"
  end

private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :username)
  end

  def require_correct_user
    @user = User.find(params[:id])

    if current_user?(@user) == false
      redirect_to root_url
    end

  end

end
