class SessionsController < ApplicationController
    def new
        @user = User.new
    end
    def create
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            redirect_to user_path(user.id)
        else
            flash.now[:danger] = 'Je n\'ai pas réussi à me connecter'
            render :new
        end
    end
    def destroy
      session.delete(:user_id)
      flash[:notice] = 'Vous avez été déconnecté.'
      redirect_to new_session_path
    end
end
