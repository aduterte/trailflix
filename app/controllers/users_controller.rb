class UsersController < ApplicationController


    def show

        user = User.find(params[:id])
        if user 
            render json: user.as_json(include: [:movies], except: [:created_at, :updated_at])
        else
            render json: {error_message:  'User not found'}
        end
    end

    def create
        # byebug
        user = User.create(name: params[:name], email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])
        if user.valid?
            user.save
            render json: user
        else
            render json: user.errors.full_messages
        end
    end

    def update
        user = User.find(params[:id])
        render json: user
    end

    def login 
        user = User.find_by(email: params[:email])
        
        if user
            render json: user.as_json(include: [:movies] ,except: [:created_at, :updated_at])
        else 
            render json: {error_message: "User not found"}
        end
    end


end
