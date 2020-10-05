-- Exercise 1.1: Run the factorial example. What happens to your program
-- if you enter a negative number?  Modify the example to avoid this
-- problem.

-- The original definition is this:

-- defines a factorial function
function fact (n)
   if n == 0 then
      return 1
   else
      return n * fact (n - 1)
   end
end

print ("enter a number:")
a = io.read ("*n")
-- reads a number
print (fact (a))

-- If we enter a negative number such as -1, the program fails with a
-- "stack overflow" error, presumably because the recursion goes
-- indefinitely towards minus infinity, and therefore never reaches
-- its base case (n == 0).

-- To solve this we could simple use the following definition instead,
-- which has all negative numbers as base cases for its recursion.

-- defines a factorial function
function fact (n)
   if n <= 0 then
      return 1
   else
      return n * fact (n - 1)
   end
end

-- In this version entering a negative number returns 1.
