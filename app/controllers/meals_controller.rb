class MealsController < ApplicationController

  def index
    @meals = Meal.all
  end

  def new
  end

  def create
  end

  def update
  end
end
