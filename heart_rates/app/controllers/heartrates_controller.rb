class HeartratesController < ApplicationController\
    def index
        @heartrates = Heartrate.all 
        render json: @heartrates
    end

    def show 
    end

    def create
    end

    def update
    end
    
    def destroy
    end
end
