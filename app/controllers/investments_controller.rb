class InvestmentsController < ApplicationController
  def index
    @investments = Investment.all
  end

  def new
    @investment = Investment.new
    @investment.user = current_user
  end

  def create
    @investment = Investment.new(investment_params)
    @investment.user = current_user
    if @investment.save
      redirect_to investments_path
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  def show

  end

  protected

  def investment_params
    params.require(:investment).permit(
      :description, :investment_type
    )
  end
end
