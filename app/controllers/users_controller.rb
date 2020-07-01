class UsersController < ApplicationController

    get '/signup' do
        if Helpers.is_logged_in?(session)
         redirect to '/meals' #shows all meals for user 
       end
   
       erb :"/users/signup"
    end

    post '/signup' do 
        user = User.new(:username => params[:username], :email => params[:email], :password => params[:password])
        if user.save && user.username != "" && user.email != ""
            session[:user_id] = user.id
            redirect to "/meals"
        else 
            redirect "/signup"
        end 
            redirect to "/meals"
    end 


   # get '/login' do 
        #erb :"users/login"
        #if Helpers.is_logged_in?(session)
           # redirect to "/meals"
        #else
       #     erb :"users/login"
       # end 
   # end 

    #post '/login' do 
        #user = User.find_by(username: params[:username])
        #if user && user.authenticate(password: params[:password])
           # session[:user_id] = user.id
          #  redirect to '/meals'
      #  else  
           # redirect to '/login'
        
       # end
  #  end 

   # get '/logout' do 
        #if Helpers.is_logged_in?(session)
         #   session.clear 
       # end 
       # erb :index
  #  end 

end 