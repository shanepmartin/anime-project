class CartoonsController < ApplicationController
    def index
        render json: Cartoon.all
    end

    def show
        render json: Cartoon.find(params[:id])
    end

    def new
        render json: Cartoon.new
    end

    def create
        cartoon = Cartoon.new(title: "...", body: "...")

        if cartoon.save
            redirect_to @cartoon
        else
            render :new, status: :unprocessable_entity
        end
    end
    
    def edit 
        @game = Game.find(params[:id])
    end

    def update
        @game = Game.find(params[:id])

        if @game.update(game_params)
            redirect_to @game
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy 
        @game = Game.find(params[:id])
        @game.destroy

        redirect_to root_path, status: :see_other
    end

    private
        def cartoon_params
            params.require(:cartoon).permit(:title, :body)
        end
end