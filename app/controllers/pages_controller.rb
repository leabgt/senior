class PagesController < ApplicationController
  before_action :authenticate_user!, only: [ :home ]

  def home
    @repertoire = current_user.repertoire
  end

  # def user_params
  #   params.require(:user).permit(:trips, :contacts, :repertoire, :photo)
  # end
end


