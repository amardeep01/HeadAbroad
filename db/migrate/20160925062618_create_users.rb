class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :email, :limit=>50
		t.string :password, :limit=>30
		t.string :profile_img
		t.boolean :isa_agent 
      t.timestamps null: false
    end
  end
end
