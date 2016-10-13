require 'sinatra'

get '/' do
  # hello
  @varaible_for_view = 'Hi! I am a variable. the @ at the beginning will make it accessible in the erb/view file.'
  @people = ["Jonathan", "Joel", "Jarrett"]
  erb :index, layout: :main
end

get '/states' do
  # code!
  @states = Array.new
  @state = { id: "IL", name: "Illinois" }
  @states << @state
  @state = { id: "CA", name:  "California" }
  @states << @state
  @state = { id: "IN", name:  "Indiana" }
  @states << @state
  @state = { id: "WA", name:  "Washington" }
  @states << @state
  @state = { id: "MD", name:  "Maryland" }
  @states << @state
  @states.sort_by!{ |state| state[:name] }
  erb :states, layout: :main
end
