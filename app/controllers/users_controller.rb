class UsersController < ApplicationController

    get '/signup' do
        if logged_in?(session)
         redirect to '/meals' #shows all meals for user 
       end
   
       erb :"/users/signup"
    end

    post '/signup' do 
        user = User.create(username: params[:username], email: params[:email], password: params[:password])
        user.save 
        if user.username != "" && user.email != ""
            session[:user_id] = user.id
            redirect "/meals"
        else 
            redirect "/signup"
        end 

    end 


    get '/login' do 
        #erb :"users/login"
        if logged_in?(session)
            redirect to "/meals"
        else
            erb :"users/login"
        end 
    end 

    post '/login' do 
        user = User.find_by(username: params[:username])
        if user && user.authenticate(password: params[:password])
            session[:user_id] = user.id
            redirect to '/meals'
        else  
            redirect to '/login'
        
        end
    end 

    get '/logout' do 
        if logged_in?(session)
            session.clear 
        end 
        erb :index
    end 

end 