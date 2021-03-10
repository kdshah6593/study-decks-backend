class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def index
        users = User.all
        render json: UserSerializer.new(users)
    end

    def show
        user = User.find_by(id: params[:id])
        render json: UserSerializer.new(user)
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            @token = encode_token(user_id: @user.id)
            render json: UserSerializer.new(@user), status: :created
        else
            render json: {errors: user.errors.full_messages}, status: :not_acceptable
        end
    end

    private
    def user_params
        params.require(:user).permit(:username, :password)
    end
end
