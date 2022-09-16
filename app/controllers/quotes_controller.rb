class QuotesController < ApplicationController
    def index
        render json: Quote.all
    end

    def show
        render json: Quote.find(params[:id])
    end

    def new
        render json: Quote.new
    end

    def create
        quote = Quote.new(quote_params)

        if quote.save
            redirect_to @quote
        else
            render :new, status: :unprocessable_entity
        end
    end

    def edit 
        @quote = Quote.find(params[:id])
    end

    def update
        @quote = Quote.find(params[:id])

        if @quote.update(quote_params)
            redirect_to @quote
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy 
        @quote = Quote.find(params[:id])
        @quote.destroy

        redirect_to root_path, status: :see_other
    end

    private
        def quote_params
            params.require(:quote).permit(:title, :body)
        end
end