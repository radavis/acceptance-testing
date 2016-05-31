require "sinatra"

require_relative "models/song"

set :views, File.join(File.dirname(__FILE__), "views")

get "/" do
  redirect to("/songs")
end

# create
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
patch "/songs/:id" do
  "TODO"
end

# delete
delete "/songs/:id" do
  "TODO"
end
