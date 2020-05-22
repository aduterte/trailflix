# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'

User.destroy_all
Movie.destroy_all
Favorite.destroy_all






#------------------------ MOVIES -------------------------

m1 = RestClient.get 'https://api.themoviedb.org/3/movie/popular?api_key=b94d0b3b408ccf74d9f49bb39a64a13b&language=en-US&page=1'
m2 = RestClient.get 'https://api.themoviedb.org/3/movie/popular?api_key=b94d0b3b408ccf74d9f49bb39a64a13b&language=en-US&page=2'
m3 = RestClient.get 'https://api.themoviedb.org/3/movie/popular?api_key=b94d0b3b408ccf74d9f49bb39a64a13b&language=en-US&page=3'
m4 = RestClient.get 'https://api.themoviedb.org/3/movie/popular?api_key=b94d0b3b408ccf74d9f49bb39a64a13b&language=en-US&page=4'

m1arr = JSON.parse(m1)["results"]
m2arr = JSON.parse(m2)["results"]
m3arr = JSON.parse(m3)["results"]
m4arr = JSON.parse(m4)["results"]

m1arr.each do |movie|
    x = RestClient.get "https://api.themoviedb.org/3/movie/#{movie['id']}?api_key=b94d0b3b408ccf74d9f49bb39a64a13b&language=en-US"
    resp = JSON.parse(x)
    genres = []
    resp["genres"].each {|x| genres << x["name"]}
    Movie.create(
        title: resp["title"],
        backdrop_path: resp["backdrop_path"],
        adult: resp["adult"],
        overview: resp["overview"],
        poster_path: resp["poster_path"],
        release_date: resp["release_date"],
        runtime: resp["runtime"],
        imdb_id: resp["imdb_id"],
        tagline: resp["tagline"],
        original_language: resp["original_language"],
        genres: genres,
        tmdb_id: resp["id"]
    )
end

m2arr.each do |movie|
    x = RestClient.get "https://api.themoviedb.org/3/movie/#{movie['id']}?api_key=b94d0b3b408ccf74d9f49bb39a64a13b&language=en-US"
    resp = JSON.parse(x)
    genres = []
    resp["genres"].each {|x| genres << x["name"]}
    Movie.create(
        title: resp["title"],
        backdrop_path: resp["backdrop_path"],
        adult: resp["adult"],
        overview: resp["overview"],
        poster_path: resp["poster_path"],
        release_date: resp["release_date"],
        runtime: resp["runtime"],
        imdb_id: resp["imdb_id"],
        tagline: resp["tagline"],
        original_language: resp["original_language"],
        genres: genres,
        tmdb_id: resp["id"]
    )
end

m3arr.each do |movie|
    x = RestClient.get "https://api.themoviedb.org/3/movie/#{movie['id']}?api_key=b94d0b3b408ccf74d9f49bb39a64a13b&language=en-US"
    resp = JSON.parse(x)
    genres = []
    resp["genres"].each {|x| genres << x["name"]}
    Movie.create(
        title: resp["title"],
        backdrop_path: resp["backdrop_path"],
        adult: resp["adult"],
        overview: resp["overview"],
        poster_path: resp["poster_path"],
        release_date: resp["release_date"],
        runtime: resp["runtime"],
        imdb_id: resp["imdb_id"],
        tagline: resp["tagline"],
        original_language: resp["original_language"],
        genres: genres,
        tmdb_id: resp["id"]
    )
end

m4arr.each do |movie|
    x = RestClient.get "https://api.themoviedb.org/3/movie/#{movie['id']}?api_key=b94d0b3b408ccf74d9f49bb39a64a13b&language=en-US"
    resp = JSON.parse(x)
    genres = []
    resp["genres"].each {|x| genres << x["name"]}
    Movie.create(
        title: resp["title"],
        backdrop_path: resp["backdrop_path"],
        adult: resp["adult"],
        overview: resp["overview"],
        poster_path: resp["poster_path"],
        release_date: resp["release_date"],
        runtime: resp["runtime"],
        imdb_id: resp["imdb_id"],
        tagline: resp["tagline"],
        original_language: resp["original_language"],
        genres: genres,
        tmdb_id: resp["id"]
    )
end
#------------------------ USERS -------------------------


u1 = User.create(name: "Alex", email: "duterte@gmail.com", password: "pass")
u2 = User.create(name: "Carla", email: "sahagun@gmail.com", password: "pass")
u3 = User.create(name: "John", email: "smith@gmail.com", password: "pass")


#------------------------ FAVORITES -------------------------

Favorite.create(user: u1, movie_id: 20)
Favorite.create(user: u1, movie_id: 21)
Favorite.create(user: u1, movie_id: 22)
Favorite.create(user: u1, movie_id: 23)
Favorite.create(user: u2, movie_id: 24)
Favorite.create(user: u2, movie_id: 25)
Favorite.create(user: u2, movie_id: 26)
Favorite.create(user: u3, movie_id: 27)
Favorite.create(user: u3, movie_id: 28)








# {"popularity"=>507.351, "vote_count"=>3427, "video"=>false, "poster_path"=>"/xBHvZcjRiWyobQ9kxBhO6B2dtRI.jpg", "id"=>419704, "adult"=>false, "backdrop_path"=>"/5BwqwxMEjeFtdknRV792Svo0K1v.jpg", "original_language"=>"en", "original_title"=>"Ad Astra", "genre_ids"=>[18, 878], "title"=>"Ad Astra", "vote_average"=>6, "overview"=>"The near future, a time when both hope and hardships drive humanity to look to the stars and beyond. While a mysterious phenomenon menaces to destroy life on planet Earth, astronaut Roy McBride undertakes a mission across the immensity of space and its many perils to uncover the truth about a lost expedition that decades before boldly faced emptiness and silence in search of the unknown.", "release_date"=>"2019-09-17"}

# https://api.themoviedb.org/3/movie/530915?api_key=b94d0b3b408ccf74d9f49bb39a64a13b&language=en-US

