class SessionsController < ApplicationController
  skip_before_filter :authorize

  def new
    redirect_to '/auth/twitter'
  end

  def create
    auth = request.env['omniauth.auth']
    user = User.find_or_create_by_uid(auth['uid'])
    session[:user_id] = user.uid
    redirect_to lessons_url
    # if user and user.authenticate(params[:password])
    #   session[:user_id] = user.id
    #   redirect_to root_url
    # else
    #   redirect_to login_url, alert: "Invalid user/password combo!"
    # end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Logged out'
  end
end
