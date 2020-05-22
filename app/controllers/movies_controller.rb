class MoviesController < ApplicationController


    def index
        movies = Movie.all
        render json: movies
    end

    def show
        movie = Movie.find(params[:id])
        if movie
            render json: movie
        else
            render json: {message:  'Movie not found'}
        end
    end

   






end
