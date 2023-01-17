class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  #ALL

  get "/" do 
  
    arry = [Game.all.to_json,
    Review.all.to_json,
    Platform.all.to_json,
    Genre.all.to_json]
    arry.to_json

  end

#PLATFORM PATHS

    get '/platforms' do 
      Platform.all.to_json
    end
  
    get '/platforms/:id' do 
      platform = Platform.find(params[:id])
      platform.to_json
    end


#GAMES PATHS

  get "/games" do
    reviews = Game.all.map do |game|
      blam = [
      title: game.title,
      img_url: game.img_url,
      year: game.year,
      review: game.reviews
    ]
      blam
    end
    reviews.to_json
  end

  get '/games/:id' do 
    game = Game.find(params[:id])
    game.to_json(include: :reviews)
  end

#ADD GAMES

  post "/games" do
  
    new = Game.create(
      title: params[:title],
      img_url: params[:img_url],
      year: params[:year],
      genre_id: params[:genre_id],
      platform_id: params[:platform_id]
    )
    new.to_json
    
  end

#DELETE GAMES
  
  delete '/games/:id' do
    game = Game.find(params[:id])
    game.destroy
    game.to_json
  end

end
