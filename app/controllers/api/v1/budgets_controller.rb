# BudgetsController
class Api::V1::BudgetsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    user = current_user
    user_budget = Budget.find_by(user_id: user[:id])
    render json: { budget: user_budget, user: current_user }
  end

  def create
    binding.pry
    user_budget = Budget.new(budget_params)
    user = current_user
    user_budget.user = user # need a user table

    existing_budget = Budget.find_by(user: user_budget.user)
    if existing_budget
      existing_budget.budget = user_budget.budget
      existing_budget.save
      render json: existing_budget
    elsif budget.valid?
      user_budget.save
      render json: user_budget
    else
      render json: { error: vote.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def budget_params
    params.require(:budget).permit(:budget)
  end
end
