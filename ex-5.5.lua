-- Exercise 5.5: Can you write the function from the previous item so
-- that it uses at most n additions and n multiplications (and no
-- exponentiations)?

-- Sure, if this is what you mean.

function polyval (p, x)
   local sum, pow = 0, 1
   for _, a in ipairs (p) do
      sum = sum + a * pow
      pow = pow * x
   end
   return sum
end
