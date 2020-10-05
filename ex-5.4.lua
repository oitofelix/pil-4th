-- Exercise 5.4: We can represent a polynomial a_n*x^n +
-- a_{n-1}*x^{n-1} + ... + a_1*x^1 + a_0 in Lua as a list of its
-- coefficients, such as {a_0 , a_1 , ..., a_n}.  Write a function
-- that takes a polynomial (represented as a table) and a value for x
-- and returns the polynomial value.

function polyval (p, x)
   local sum = 0
   for i, a in ipairs (p) do
      sum = sum + a * x ^ (i - 1)
   end
   return sum
end
