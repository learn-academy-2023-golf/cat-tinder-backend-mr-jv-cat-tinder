class PigeonsController < ApplicationController
    def index 
        pigeons = Pigeon.all
        render json: pigeons
    end

    def create
        pigeon = Pigeon.create(pigeon_params)
        render json: pigeon
    end

    def update
        pigeon = Pigeon.find(params[:id])
        pigeon.update(pigeon_params)
        render json: pigeon
    end

    def destroy
        pigeon = Pigeon.find(params[:id])
        pigeon.destroy
        render json: pigeon
    end

    private
    def pigeon_params
        params.require(:pigeon).permit(:name, :age, :enjoys, :image)
    end
end