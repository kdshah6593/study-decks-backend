class Api::V1::UsersController < ApplicationController

    def index
        users = User.all
        render json: UserSerializer.new(users)
    end

    def show
        user = User.find_by(id: params[:id])
        render json: UserSerializer.new(user)
    end

    def create
        user = User.new(user_params)
        if user.save
            render json: UserSerializer.new(user), status: :created
        else
            render json: {errors: user.errors.full_messages}, status: :not_acceptable
        end
    end

    private
    def user_params
        params.require(:user).permit(:username, :password)
    end
end
