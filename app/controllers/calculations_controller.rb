class CalculationsController < ApplicationController
  def home
  end

  def square
    @the_number = params[:number].to_f
    @answer = @the_number ** 2
  end

  def sqrt
    @the_number = params[:number].to_f
    @answer = Math.sqrt(@the_number)
  end

  def pmt
    r = params[:interest_rate].to_f/100
    n = params[:number_of_payments].to_f
    p = params[:present_value].to_f
    @payment = (p * r * (1 + r) ** n) / ((1 + r) ** n - 1)
  end
end
