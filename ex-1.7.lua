-- Exercise 1.7: Consider the following expression:
--
-- (x and y and (not z)) or ((not y) and x)
--
-- Are the parentheses necessary? Would you recommend their use in
-- that expression?

-- They are not, because the precedence order of the logical operators
-- is not > and > or.  So the expression could simply be written

x and y
  and not z
or not y
   and x

-- The use of parenthesis make the expression arguably more readable,
-- though.
