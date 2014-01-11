module Api
	module V1
		class RegisterController < UsersController
			
			# POST api/v1/register
			def create 
				username = params[:username]
				password = params[:password]
				password_confirmation = params[:password_confirmation]
				email = params[:email]

				user = User.new(username: username, email: email, password: password, password_confirmation: password_confirmation)

				if (user.save) 
					json = {user: user.attributes}
				else
					json = {status: -1}
				end

				respond_to do |format|
					format.json {render json: JSON.pretty_generate(json)}
				end
      end
		end
	end
end