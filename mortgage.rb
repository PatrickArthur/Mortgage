


class Mortgage


  def initialize(home_value, down_payment_percentage, apr, duration_in_years)
   @home_value = home_value
   @down_payment_percentage = down_payment_percentage
   @apr = apr
   @duration_in_years = duration_in_years
    end

  def down_payment
    @down_payment_percentage*@home_value
  end

  def monthly_payment
    pay=((@apr / 100 / 12) * @home_value) / (1 - ((1 + (@apr / 100 / 12))** (-@duration_in_years * 12)))
    pay-(@down_payment_percentage*pay)

  end

  def total_interest_paid
    i=((monthly_payment*(@duration_in_years * 12)-@home_value)+down_payment)

  end

  end














