class Fractions
  attr_accessor :numerator, :denominator
  def initialize(numerator, denominator)
    @numerator = numerator
    @denominator = denominator
  end
  def to_decimal
    if denominator.to_i == 0 || denominator.class == String || numerator.class == String
      return "undefined"
    else
      return numerator/denominator.to_f
    end
  end
  def to_string
    if denominator.to_i == 0 || denominator.class == String || numerator.class == String
      return "undefined"
    else
      return numerator.to_s + "/" + denominator.to_s
    end
  end
  def simplify
    if denominator.to_i == 0 || denominator.class == String || numerator.class == String
      return "undefined"
    else
      min = [numerator, denominator].min
      min.downto(2) do |x|
        if numerator%x == 0 && denominator%x == 0
          n = numerator/x
          d = denominator/x
            if d == 1
              return n
            else
              return n.to_s + "/" + d.to_s
            end
          break
        end
      end
    end
  end
end
