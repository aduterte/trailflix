class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :genres # possibly has many genres / genres belong to .... might mess up api though.
      t.string :backdrop_path
      t.boolean :adult
      t.string :imdb_id
      t.text :overview
      t.string :poster_path
      t.string :release_date
      t.integer :runtime
      t.string :tagline
      t.string :original_language
      t.string :tmdb_id

      t.timestamps
    end
  end
end

#   "original_title": "1917",
#   "popularity": 104.871,
#   "production_companies": [
#     {
#       "id": 1522,
#       "logo_path": "/8uaoEVgNxFH0R94O53gUiByahVr.png",
#       "name": "Neal Street Productions",
#       "origin_country": "GB"
#     },
#     {
#       "id": 7,
#       "logo_path": "/vru2SssLX3FPhnKZGtYw00pVIS9.png",
#       "name": "DreamWorks Pictures",
#       "origin_country": "US"
#     },
#     {
#       "id": 114732,
#       "logo_path": "/tNCbisMxO5mX2X2bOQxHHQZVYnT.png",
#       "name": "New Republic Pictures",
#       "origin_country": "US"
#     },
#     {
#       "id": 121685,
#       "logo_path": "/bAO6cpKP9qoqHoDn4oUjWjZ5auq.png",
#       "name": "Amblin Partners",
#       "origin_country": "US"
#     },
#     {
#       "id": 33,
#       "logo_path": "/8lvHyhjr8oUKOOy2dKXoALWKdp0.png",
#       "name": "Universal Pictures",
#       "origin_country": "US"
#     },
#     {
#       "id": 133323,
#       "logo_path": null,
#       "name": "Moving Picture Company",
#       "origin_country": ""
#     }
#   ],
#   "production_countries": [
#     {
#       "iso_3166_1": "CA",
#       "name": "Canada"
#     },
#     {
#       "iso_3166_1": "ES",
#       "name": "Spain"
#     },
#     {
#       "iso_3166_1": "GB",
#       "name": "United Kingdom"
#     },
#     {
#       "iso_3166_1": "US",
#       "name": "United States of America"
#     }
#   ],
#   
#   "revenue": 368027644,
#   
#   "spoken_languages": [
#     {
#       "iso_639_1": "en",
#       "name": "English"
#     },
#     {
#       "iso_639_1": "fr",
#       "name": "Franà¸£à¸‡ais"
#     },
#     {
#       "iso_639_1": "de",
#       "name": "Deutsch"
#     }
#   ],
#   "status": "Released",
#   
#   "title": "1917",
#   "video": false,
#   "vote_average": 7.9,
#   "vote_count": 4970
# }


#   "genres": [
#     {
#       "id": 10752,
#       "name": "War"
#     },
#     {
#       "id": 18,
#       "name": "Drama"
#     },
#     {
#       "id": 28,
#       "name": "Action"
#     },
#     {
#       "id": 53,
#       "name": "Thriller"
#     },
#     {
#       "id": 36,
#       "name": "History"
#     }
#   ],