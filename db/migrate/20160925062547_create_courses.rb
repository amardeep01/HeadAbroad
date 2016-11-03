class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
        t.integer :university_id
    	t.string :name , :limit=> 60 
        t.string :duration :limit=>200
    	t.string :tuition_fee, :limit=>15
    	t.string :hostel_fee, :limit=>15
    	t.string :twelfth, :limit=>30 
    	t.string :bachelors, :limit=>30
    	t.string :gre , :limit=>50
    	t.string :gmat, :limit=>20 
    	t.string :acceptance_ratio, :limit=>20
    	t.string :melab, :limit=>15
    	t.string :cae, :limit=>15
    	t.string :cael, :limit=>15
    	t.string :sat, :limit=>15
    	t.string :ielts, :limit=>50
    	t.string :toefl, :limit=>50
    	t.string :pte, :limit=>50
    	t.text :lor, :limit=>300
    	t.text :essay, :limit=>300
    	t.text :cv, :limit=>250
    	t.text :document_required, :limit=>250
    	t.string :application_link, :limit=>100
    	t.string :application_fee, :limit=>15
    	t.text :deadlines, :limit=>500
    	t.text :average, :limit=>200
    	t.text :additional_info, :limit=>300

      t.timestamps null: false
    end
  end
end
