class GamesController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        @games = Game.all 
        render json: @games
    end 

    def show
        @game = Game.find(params[:id])
        render json: @game
    end 

    def create
        @game = Game.create(
            name: params[:name],
            description: params[:description],
            link: params[:link],
            image: params[:image]
        )
        render json: @game
    end 

    def update
        @game = Game.find(params[:id])
        @game.update(
            name: params[:name],
            description: params[:description],
            link: params[:link],
            image: params[:image]
        )
        render json: @game
    end 

    def destroy
        @games = Game.all 
        @game = Game.find(params[:id])
        @game.destroy
        render json: @game
    end 

end
    
