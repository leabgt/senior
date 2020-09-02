class MealsController < ApplicationController
  def index
    if params[:day].present?
      @breakfasts = Meal.where(category: "breakfast", day: params[:day])
      @lunches = Meal.where(category: "lunch", day: params[:day])
      @diners = Meal.where(category: "diner", day: params[:day])
    end
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
