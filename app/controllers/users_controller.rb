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
end