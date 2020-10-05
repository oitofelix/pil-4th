-- Exercise 4.7: Write a function to check whether a given string is a
-- palindrome:
--
-- > ispali ("step on no pets") --> true
-- > ispali ("banana")          --> false

function ispali (s)
   return s == s:reverse ()
end

ispali ("step on no pets") --> true
ispali ("banana")          --> false
