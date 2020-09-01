class MealsController < ApplicationController
  def index
    @breakfasts = Meal.where(category: "breakfast")
    @lunches = Meal.where(category: "lunch")
    @diners = Meal.where(category: "diner")
  end

  def show
    @meal = Meal.find(params[:id])
  end

  def new
  end

  def create
  end

  def update
  end
end
