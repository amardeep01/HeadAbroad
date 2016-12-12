class LoginController < ApplicationController
	layout 'userlogin', only: [:login]
		# layout: "userlogin"
	def login
		# render layout: "userlogin"
		
		if params.has_key?(:email) && params.has_key?(:password)

  		email = params[:email]
  		password = params[:password] 		
  		@user = User.find_by_email("#{email}")
  		# byebug
  		if !@user.nil? && @user.password == password 
     		 session[:user_id] = @user.id
      		session[:email] = @user.email
      		render "login"
   		 else
     		 redirect_to :controller=>"user" , :action=>"header"
  		end
  	else
     		 redirect_to :controller=>"user" , :action=>"header"

  		end
	end

 def showUniversity
    @university_name = params[:university_name]
    @universities = University.where("ielts like ?","%#{@university_name}%")
    render 'showUniversity'
  end
		

	def logout
		session[:user_id] = nil
		session[:email] = nil
		redirect_to :controller=>"user",:action=>"header" and return
	end

end