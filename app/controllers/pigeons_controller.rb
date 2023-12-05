class PigeonsController < ApplicationController
    def index 
        pigeons = Pigeon.all
        render json: pigeons
    end

    def create
        pigeon = Pigeon.create(pigeon_params)
        if pigeon.valid?
            render json: pigeon
        else
            render json: pigeon.errors, status: 422
        end
    end

    def update
        pigeon = Pigeon.find(params[:id])
        pigeon.update(pigeon_params)
        if pigeon.update(pigeon_params)
            render json: pigeon
        else
            render json: pigeon.errors, status: 422
        end
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