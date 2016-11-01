class UserController < ApplicationController
	def fill_detail
			
	end


	def list
		@user= User.all
	end

	
	def edit
		@id = params[:id]
		@user = User.find(@id)
	end

	
	def delete
		@id = params[:id]
		@user = User.find(@id)	
	if @user.destroy
		redirect_to :controller=>'user', :action => 'list'
	else
		puts error
	end
	end

	def create
		@user = User.new(user_params)
		if @user.save
			render 'list'
		end
	end

	
	def user_params
    return params.require(:user).permit(:id,:email, :password,
    	:profile_img, :isa_agent)
	end
end
