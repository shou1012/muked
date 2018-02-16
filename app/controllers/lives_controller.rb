class LivesController < ApplicationController
    def index
        @lives = Live.all
        render :json => @lives
    end
    def show
        live_id = User.find_by(uuid: params[:uuid]).live_id
        @lives = Live.find_by(id: live_id)
        render :json => @lives
    end
end
