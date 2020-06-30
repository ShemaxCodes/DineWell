class MealsController < ApplicationController 

get '/meals' do 
    if Helpers.is_logged_in?(session)
        @meals = Meal.all 
        @user = Helpers.current_user(session)
        erb :"meals/meals"
    else
        redirect '/login'
    end 
end 

get '/meals/new' do 

    
end 


end
