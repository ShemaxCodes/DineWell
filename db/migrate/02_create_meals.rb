class CreateMeals < ActiveRecord::Migration 

    def change 
        create_table :meals do |t| 
            t.string :title 
            t.string :ingredients 
            t.integer :user_id 
        end 
    end 
end 