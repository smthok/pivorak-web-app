class ProfileController < ApplicationController
  before_action :authenticate_user!

  helper_method :profile

  def update
    if User::Update.call current_user, params[:user]
      add_flash(:success)
      redirect_to root_path
    else
      render :edit
    end
  end
end
