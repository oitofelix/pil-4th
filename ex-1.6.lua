-- Exercise 1.6: How can you check whether a value is a Boolean
-- without using the function ‘type’?

-- Both predicate functions below are correct ways to do that.

function is_boolean (x)
   return x == true
      or x == false
end

function is_boolean (x)
   return not not x == x
end
