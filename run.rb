require 'sinatra'

get '/' do
  # hello
  @varaible_for_view = 'Hi! I am a variable. the @ at the beginning will make it accessible in the erb/view file.'
  @people = ["Jonathan", "Joel", "Jarrett"]
  erb :index, layout: :main
end

get '/years' do


  # code!
  @years = (1972..2013).to_a
  erb :years, layout: :main 
end

get '/states' do
  # code!
  @states = ['Washington', 'Oregon', 'California', 'Idaho', 'Alaska']
  @states.sort
  @states.sort!
  erb :states, layout: :main
end
