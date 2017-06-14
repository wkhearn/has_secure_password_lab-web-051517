class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    # raise params.inspect
    @user = User.find_by(name: params[:user][:name])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to welcome_show_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session.delete :user_id
    redirect_to '/'
  end
end
