class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/games" do
    Game.all.to_json
  end

  get '/games/:id' do 
    game = Game.find(params[:id])
    game.to_json
  end
  
end
