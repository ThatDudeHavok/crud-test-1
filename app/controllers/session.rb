get '/login' do
  if request.xhr?

  else
    erb :'/users/login'
  end
end
