class UsersController < ApplicationController

    get '/signup' do
        if logged_in?
         redirect to '/meals' 
       end
   
       erb :"/users/signup"
    end

    post '/signup' do 
        #binding.pry
        user = User.new(:username => params[:username], :email => params[:email], :password => params[:password])
        if user.save && user.username != "" && user.email != ""
            session[:user_id] = user.id
            #binding.pry
            redirect to "/meals"
        else 
            redirect "/signup"
        end 
            redirect to "/meals"
    end 


    get '/login' do 
        if logged_in?
           redirect to "/meals"
        else
           erb :"users/login"
        end 
    end 

    post '/login' do 
        user = User.find_by(username: params[:username])
        #binding.pry
        if user && user.authenticate(params[:password])
            #binding.pry
            session[:user_id] = user.id 
            redirect to "/meals"
        else  
            redirect to '/login'
        
        end
        
    end 

   get '/logout' do 
        if logged_in?
           session.clear 
       end 
        erb :index
     end 

end 