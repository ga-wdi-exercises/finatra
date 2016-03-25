require "sinatra"

get "/" do
  erb :index, layout: :main
end

get "/:fishname" do
  @fish = params[:fishname]
  erb :show, layout: :main
end
