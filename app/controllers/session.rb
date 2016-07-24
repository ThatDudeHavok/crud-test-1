get '/login' do
  if request.xhr?

  else
    erb :'/users/login'
  end
end

post '/login' do
  if request.xhr?
  else
    @user = User.find_by(email: params[:email])
    if @user && @user.save
      session[:user_id]
      redirect '/'
    else
      @errors = ['The most invalid credentials']
      erb :'users/login'
    end
  end
end
