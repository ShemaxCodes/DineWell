class MealsController < ApplicationController 

get '/meals' do 
    if logged_in?
        @meals = Meal.all 
        @user = current_user
        erb :"meals/meals"
    else
        redirect '/login'
    end 
end 

get '/meals/new' do 
    if logged_in?
        erb :"meals/new_meal"
    else 
     redirect '/login'
    end 
end 

post '/meals' do 
    user = current_user
    if params[:title].empty? || params[:ingredients].empty?
        redirect '/meals/new'
    end 
    meal = Meal.create(title: params[:title], ingredients: params[:ingredients], :user_id => user.id)
    redirect '/meals'

end 



end
