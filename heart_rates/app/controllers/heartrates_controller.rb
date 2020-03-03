class HeartratesController < ApplicationController
    def index
        @heartrates = Heartrate.all 
        render json: @heartrates 
    end

    def show 

    end

    def create
        @heartrate = Heartrate.create(bpm: params[:bpm], user_id: params[:user_id])
        render json: @heartrate
    end

    def update
        @heartrate = Heartrate.find(params[:id])
        @heartrate.update(bpm: params[:bpm])
        render json: @heartrate
    end

end
