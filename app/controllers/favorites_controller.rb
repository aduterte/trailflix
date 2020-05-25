class FavoritesController < ApplicationController

    def index
        favorites = Favorite.all
        render json: favorites
    end

    def show
        favorite = Favorite.find(params[:id])
        if favorite
            render json: favorite
        else
            render json: {message: "Favorite not Found"}
        end
    end

    def create
        favorite = Favorite.create(user_id: params[:user_id], movie_id: params[:movie_id])
        movie = Movie.find(favorite.movie_id)
        render json: movie
 
    end

    def destroy
        movie = Movie.find(params[:movie_id])
        favorite = Favorite.find_by(movie_id: movie.id, user_id: params[:user_id])
        
        favorite.destroy
       
        render json: movie
    end

end
