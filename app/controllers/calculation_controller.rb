class CalculationController < ApplicationController
  respond_to :json

  def calculate
    @calculation = Calculation.create(values: calculate_params[:values], ip: request.remote_ip)
    redirect_to @calculation
  end

  def show
    @calculation = Calculation.find(params[:id])
    render json: { product: @calculation.product, sum: @calculation.sum }
  end

  def history
    @calculations = params[:length] ? Calculation.take(params[:length]) : Calculation.all
    respond_with @calculations
  end

  private

  def calculate_params
    params.permit(:values)
  end
end
