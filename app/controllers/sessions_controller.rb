class SessionsController < ApplicationController

  def create
    user = User.find_by_email(params[:email].downcase)
    puts params[:email].downcase
    # If the user exists AND the password entered is correct.
    # if user && user.authenticate(params[:password])
    #   # Save the user id inside the browser cookie. This is how we keep the user 
    #   # logged in when they navigate around our website.
    #   session[:user_id] = user.id
    #   redirect_to :root
    if User.authenticate_with_credentials(params[:email].downcase, params[:password])
      session[:user_id] = user.id #User.find_by(email: params[:email]).id
      redirect_to :root
    else
    # If user's login doesn't work, send them back to the login form.
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to :root
  end

end
