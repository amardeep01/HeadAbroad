	class UniversityController < ApplicationController
	

	def scountry
		@country = params[:country]
		@university= University.find_by_country(@country)
	end

	def search
		@id = params[:id]
		@university = University.where("name like'%start'")
	end

	def search_by_ielts
		@univeristy_name = params[:univeristy_name]
		@universities = University.where("ielts=?","#{@university_name}")
		render 'search_by_ielts'
	end

	def search_by_toefl
		@univeristy_name = params[:univeristy_name]
		@universities = Univeristy.where("toefl=?","#{@univeristy_name}")
		render 'showuniveristy'
	end

	def search_by_gre
		@univeristy_name = params[:univeristy_name]
		@universities = Univeristy.where("gre=?","#{@univeristy_name}")
		render 'showuniveristy'
	end
	def search_by_name
		@univeristy_name = params[:univeristy_name]
		@universities = Univeristy.where("name=?","#{@univeristy_name}")
		render 'showuniveristy'
	end

	def showUniversity
		@university_name = params[:university_name]
		@universities = University.where("name like ?","%#{@university_name}%")
		render 'showUniversity'
	end


	def search_by_country
		@university_name = params[:university_name]
		@universities = University.where("country=?","#{@university_name}")
		render 'showUniversity'
	end


	def list
		@university= University.all
	end

	
	def edit
		@id = params[:id]
		@university = University.find(@id)
	end

	def update
		@id = params[:id]
		@university= University.find(@id)
		if @university.update_attributes(university_params)
			@msg="University is Updated"
			@university = University.all
			render "list"
		else 
			@errors= @university.errors.full_messages
			render 'edit'
			
		end
	end
	
	def delete
		@id = params[:id]
		@university = University.find(@id)	
		if @university.destroy
			redirect_to :controller=>'university', :action => 'list'
		else
			puts error
		end
	end

	def create
		@university = University.new(university_params)
		if @university.valid?
			@university.save
		else
			@errors = @university.errors.full_messages
		end
		redirect_to :action=> 'list'
	end

	
	def university_params
    	return params.require(:university).permit(:id,:name,:description,
    		:contact,:email,:acceptance_ratio,:address,:city,:state,
    		:country,:pin,:rating,:logo)
  	end
  end

