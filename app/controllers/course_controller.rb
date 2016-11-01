class CourseController < ApplicationController
	def fill_details
			
	end

	def scourse
		@course=params[:name]
		@course=Course.find(@name)		
	end

	def list
		@course= Course.all
	end

	
	def edit
		@id = params[:id]
		@course = Course.find(@id)
	end

	def update
		@id = params[:id]
		@course= Course.find(@id)
		if @course.update_attributes(course_params)
			@msg="Course is Updated"
			@course = Course.all
			render "list"
		else 
			@errors= @course.errors.full_messages
			render 'edit'
			
		end
	end

	
	def delete
		@id = params[:id]
		@course = Course.find(@id)	
		if @course.destroy
			redirect_to :controller=>'course', :action => 'list'
		else
			puts error
		end
	end

	def create
		@course = Course.new(course_params)
		if @course.save
		redirect_to :action=> 'list' 
		end
	end

	
	def course_params
    return params.require(:course).permit(:id, :name, :tuition_fee, 
    	:hostel_fee, :twelfth, :bachelors, :gre, :gmat, :acceptance_ratio, 
    	:melab, :cae, :cael, :sat, :ielts, :toefl, :pte, :lor, :essay, 
    	:cv, :document_required, :application_link, :application_fee, 
    	:deadlines, :average, :additional_info)
	end

end
