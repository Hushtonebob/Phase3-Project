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

#REVIEWS PATHS

   get "/reviews" do
    Review.all.to_json
  end

  get "/reviews/:game_id" do
    review = Review.find_by(params[:game_id])
    review.to_json
  end

#ADD REVIEWS

  post "/reviews" do
    new = Review.create(
      title: params[:title],
      game_id: params[:game_id],
      rating: params[:rating]
    )
    new.to_json
  end

#UPDATE REVIEWS

  patch 'reviews/:id' do
    review = Review.find(params[:id])
    review.update(
      rating:params[:id]
    )
  end

#DELETE REVIEWS

  delete '/reviews/:id' do
    rev = Review.find(params[:id])
    rev.destroy
    rev.to_json
  end


end
