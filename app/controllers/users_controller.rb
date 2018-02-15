class UsersController < ApplicationController
    def create
        @user = User.create(user_params)
        respond_to do |format|
            if @user.save
            format.json { render json: @user, status: :created }
            else
            format.json { render status: :unprocessable_entity, json: { errors: "Invalid Arguments" }}
            end
        end
    end

    def show
        @lives = Live.find(params[:uuid])
        @live = @lives.current_user
        render 'show', formats: 'json', handlers: 'jbuilder'

    end

    private
        def current_user
            User.find(params[:uuid])
        end
end