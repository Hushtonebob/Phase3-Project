class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
#ALL

  get "/" do
    arry = [
      Platform.all,
      Game.all,
      Genre.all
    ]
    arry.to_json
  end

#GAMES ALL

  get "/games" do
    Game.all.to_json
  end

  get '/games/:id' do 
    game = Game.find(params[:id])
    game.to_json
  end

#UPDATE GAMES
  patch '/games/:id' do 
  game = Game.find(params[:id])
  game.update(review:params[:review])
  game.to_json
  end
#ADD GAMES
  post "/games" do
  
    new = Game.create(
      title: params[:title],
      img_url: params[:img_url],
      year: params[:year],
      genre_id: params[:genre_id],
      platform_id: params[:platform_id],
      review: params[:review]
    )
    new.to_json
    
  end

#DELETE GAMES
  
  delete '/games/:id' do
    game = Game.find(params[:id])
    game.destroy
    game.to_json
  end

#GAMES PLATFORM

  get '/games/platform/:id' do 
    blam = Game.find(params[:id])
    [blam.what_genre?].to_json
  end

end
