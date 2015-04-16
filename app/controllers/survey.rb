get '/' do
  @survey = Survey.all
  erb :"survey/index"
end

#CREATE A NEW SURVEY
post '/survey' do
  new_survey = Survey.new(
    title: params[:title]
    )
  new_survey.save
  redirect '/'
end





