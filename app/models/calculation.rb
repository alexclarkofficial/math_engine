class Calculation < ActiveRecord::Base

  def values
    JSON.parse(read_attribute(:values))
  end

  def sum
    values.reduce(:+)
  end

  def product
    values.reduce(:*)
  end
end
