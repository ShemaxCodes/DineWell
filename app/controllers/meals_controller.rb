class MealsController < ApplicationController 

get '/meals' do 
    if logged_in?
        @user = current_user
        @meals = current_user.meals
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

get '/meals/:id' do 
    if logged_in?
        @meal = Meal.find_by(id: params[:id])
        erb :'meals/show_meal'
    else 
        redirect to '/login'
    end 
end 

get '/meals/:id/edit' do 
   if !logged_in?
    redirect to '/login'
   end 
    @meal = Meal.find_by(id: params[:id]) 
    if @meal.title != nil || @meal.ingredients != nil 
    if current_user.id == @meal.user_id
        erb :"meals/edit_meal"
    end  
    end 
end 

patch '/meals/:id' do 
    meal = Meal.find_by(id: params[:id])
    if params[:title].empty? || params[:ingredients].empty?
        redirect to "/meals/#{params[:id]}/edit"
    end 
    meal.update(title: params[:title], ingredients: params[:ingredients])
    meal.save
    redirect to "/meals/#{meal.id}"
end 


post '/meals/:id/delete' do 
    @meal = Meal.find_by(id: params[:id])
    @meal.destroy
    redirect to '/meals'
    
end 

end
