class CreateUniversities < ActiveRecord::Migration
  def change
    create_table :universities do |t|
    	t.string :name , :limit=> 50
    	t.text :description, :limit=>500
    	t.string :contact, :limit=>20
    	t.string :email, :limit=>30 
    	t.string :acceptance_ratio, :limit=>5
    	t.text :address , :limit=>100
    	t.string :city, :limit=>20 
    	t.string :state, :limit=>20
    	t.string :country, :limit=>15
    	t.integer :pin
    	t.text :rating, :limit=>500
    	t.string :logo
      t.timestamps null: false
    end
  end
end
