module LoginHelper
	def signin(user)
		session[:user_id] = user.id
		
		redirect_to '/posts'
	end

	def signout
		session[:user_id] = nil
		
		redirect_to '/posts'
	end 

	def signedin
  	redirect_to '/login' if session[:user_id].nil?
    end

    def signed_in?
	  true unless session[:user_id].nil?
	end
end
