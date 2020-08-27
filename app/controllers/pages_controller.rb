class PagesController < ApplicationController
  before_action :authenticate_user!, only: [ :home ]

  def home
    @repertoire = current_user.repertoire
  end
end
