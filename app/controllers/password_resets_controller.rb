class PasswordResetsController < ApplicationController
    def new
    end

    def create
        @user = User.find_by(email: params[:email])

        if user.present?
            # Send Email
            PasswordMailer.with(user: @user).reset.deliver_now
        end
        redirect_to root_path, notice: "A Password Reset Email Was Sent to the Email Address Provided"
    end
end