class CartoonsController < ApplicationController

    def index
        @cartoons = Cartoon.all 
        render json: @cartoons
    end 

    def show
        @cartoon = Cartoon.find(params[:id])
        render json: @cartoon
    end 

    def create
        @cartoon = Cartoon.create(
            name: params[:Cartoon],
            description: params[:description],
            link1: params[:link1],
            link2: params[:link2],
            link3: params[:link3],
            image: params[:image]
        )
        render json: @cartoon
    end 

    def update
        @cartoon = Cartoon.find(params[:id])
        @cartoon.update(
            name: params[:Cartoon],
            description: params[:description],
            link1: params[:link1],
            link2: params[:link2],
            link3: params[:link3],
            image: params[:image]
        )
        render json: @cartoon
    end 

    def destroy
        @cartoons = cartoons.all 
        @cartoon = Cartoon.find(params[:id])
        @cartoon.destroy
        render json: @cartoon
    end 

end





#     def index
#         render json: Cartoon.all
#     end

#     def show
#         render json: Cartoon.find(params[:id])
#     end

#     def new
#         render json: Cartoon.new
#     end

#     def create
#         cartoon = Cartoon.new(title: "...", body: "...")

#         if cartoon.save
#             redirect_to @cartoon
#         else
#             render :new, status: :unprocessable_entity
#         end
#     end
    
#     def edit 
#         @game = Game.find(params[:id])
#     end

#     def update
#         @game = Game.find(params[:id])

#         if @game.update(game_params)
#             redirect_to @game
#         else
#             render :edit, status: :unprocessable_entity
#         end
#     end

#     def destroy 
#         @game = Game.find(params[:id])
#         @game.destroy

#         redirect_to root_path, status: :see_other
#     end

#     private
#         def cartoon_params
#             params.require(:cartoon).permit(:title, :body)
#         end
# end