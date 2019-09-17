module Luhn
  def self.is_valid?(number)
    
    #Step 1 - break the credit card into its individual digits
    tab = number.to_s.chars.map(&:to_i)
    
    #Step 2 - Start from the right, double every second digit
    #Step 3 - if the doubled value is greated than or equal to 10, take the value and subtract 9 from it
    for i in 0..tab.length/2-1
        tab[2*i] = 2* (tab[2*i])
         if tab[2*i] >= 10
            tab[2*i] = tab[2*i] - 9
        end 
    end

    #Step 4 Sum the digits.
    sum = 0
    tab.each do |a|
        sum = sum + a
    end
    
    puts sum

    #Step 5 - If the sum is divisible by 10, it's a valid number.
    if sum % 10 == 0
        return true
    else 
       return false
    end 

end

end

