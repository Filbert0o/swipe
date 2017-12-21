# BudgetsController
class BudgetsController < ApplicationController
  def show
    budget = Budget.find_by(:user_id)
    render json: budget
  end

  def create
    budget = Budget.new(budget_params)
    user = user_id
    budget.user = user # need a user table

    existing_budget = Budget.find_by(user: budget.user)
    if existing_budget
      existing_budget.budget = budget.budget
      existing_budget.save
      render json: existing_budget
    elsif budget.valid?
      budget.save
      render json: budget
    else
      render json: { error: vote.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def budget_params
    params.require(:budget).permit(:budget)
  end
end
