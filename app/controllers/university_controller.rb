	class UniversityController < ApplicationController
	
	def fill_details
					
	end

	def scountry
		@country = params[:country]
		@university= University.find_by_country(@country)
	end

	def search
		@id = params[:id]
		@university = University.where("name like'%start'")
	end

	def showUniversity
		render 'showUniversity'
	end

	def login
			
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

