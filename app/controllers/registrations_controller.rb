class RegistrationsController < ApplicationController
    def new
        # Use an instance variable so that the var is
        # available in the class scope and in the views
        Current.user = User.new
    end

    def create
        # Params gets sent from the form in views/registration/new.html.erb
        # with the data from the form
        Current.user = User.new(user_params)
        if Current.user.save
            # Safely set a cookie to see the logged-in user
            session[:user_id] = Current.user.id
            # Redirect back to the home page on success
            redirect_to root_path, notice: "Successfully Created Account"
        else
            # Render RegistrationsController#new on failure
            render :new
        end    
    end

    private
    # Private method for security so that people can't access the User creation logic
    # Also Users cant pass params in the user object that are not in permit()
    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end
end