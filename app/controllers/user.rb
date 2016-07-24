get '/users/new' do
  erb :'/users/new'
end

post '/users/new' do
  puts params
  @user = User.new(params[:user])
  if @user.save
    redirect '/'
  else
    @errors = @user.errors.full_messages
    erb :'/users/new'
  end
end
