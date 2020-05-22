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
        
    end

    def delete

    end

end
