require "sinatra"
require_relative "db/models"

get "/" do
  @fishes = Fish.all
  erb :index, layout: :main
end

get "/:fishname" do
  @fish = Fish.find_by(name: params[:fishname])
  erb :show, layout: :main
end
