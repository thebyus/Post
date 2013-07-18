class SessionsController <ApplicationController

	def new

	end

	def create
		user = User.find_by(username: params[:username])

		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to root_path, notice: "You have successfully logged in."
		else
			flash[:error] = "Your username or password are incorrect."
			redirect_to login_path 
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to login_path, notice: "You have logged out."
	end
end