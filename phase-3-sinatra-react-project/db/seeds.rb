puts "🌱 Seeding spices..."
Book.destroy_all
Movie.destroy_all
Release_Year.destroy_all
Genre.destroy_all

Book.create(title:"Dune", genre:Genre.first, released_year_id:Release_Year.first.id, has_movie:true, movie_id: Movie.first.id)
Book.create(title:"The Lord of the Rings: The Fellowship of Ring", genre:Genre.second.id, released_year_id:Release_Year.second.id, has_movie:true, movie_id: Movie.second.id)
Book.create(title:"Catcher in the Rye", genre:Genre.third.id, released_year_id:Release_Year.third.id, has_movie:false, movie_id: Movie.third.id)

Release_Year.create(year:1965)
Release_Year.create(year:1954)
Release_Year.create(year:1951)


Movie.create(title:"Dune", genre_id:Genre.first.id,released_year_id:Release_Year)

Genre.create(type:"Science Fiction")
Genre.create(type:"Fantasy")
Genre.create(type:"Young Adult")
Genre.create(type:"Drama")
Genre.create(type:"Action")
Genre.create(type:"Comedy")



Movie.create(title:"The Lord of the Rings: The Fellowship of Ring", genre_id)

# Seed your database here

puts "✅ Done seeding!"
