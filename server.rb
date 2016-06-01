require "sinatra"

require_relative "models/song"

set :bind, "0.0.0.0"
set :views, File.join(File.dirname(__FILE__), "views")

# root path
get "/" do
  redirect to("/songs")
end

# create
get "/songs/new" do
  "TODO"
end

post "/songs" do
  "TODO"
end

# read
get "/songs" do
  @songs = Song.all
  erb :"songs/index"
end

get "/songs/:id" do
  "TODO"
end

# update
get "/songs/:id/edit" do
  "TODO"
end

patch "/songs/:id" do
  "TODO"
end

# delete
delete "/songs/:id" do
  "TODO"
end
