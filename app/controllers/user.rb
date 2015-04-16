get '/' do
  erb :"user/index"
end

get '/login' do
  erb :"user/login"
end

post 'login' do

end

get '/signup' do
  erb :"user/signup"
end

post '/signup' do

end
