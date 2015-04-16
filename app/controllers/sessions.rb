def login
  @user = User.find_by_email(params[:email])
  if @user.password == params[:password]
    session[:id] = @user.id
  else
    redirect '/'
  end
end
