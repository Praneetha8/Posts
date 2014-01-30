class LoginController < ApplicationController
  def login
  end
  
  def sign_in
  	user = User.find_by(name: params[:user][:name])
  	if user && user.password == params[:user][:password] then signin(user)
    else
      flash.now[:error] = 'Invalid email/password combination' 
      render 'login'
    end
  end

  def sign_out
  	signout
  end
end
