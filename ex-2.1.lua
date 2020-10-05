-- Exercise 2.1: Modify the eight-queen program so that it stops after
-- printing the first solution.

N = 8    -- board size

-- check whether position (n,c) is free from attacks
function isplaceok (a, n, c)
   isplaceok_count = isplaceok_count + 1
   for i = 1, n - 1 do  -- for each queen already placed
      if (a[i] == c) or           -- same column?
	 (a[i] - i == c - n) or   -- same diagonal?
	 (a[i] + i == c + n) then -- same diagonal?
	 return false           -- place can be attacked
      end
   end
   return true      -- no attacks; place is OK
end

-- print a board
function printsolution (a)
   for i = 1, N do      -- for each row
      for j = 1, N do   -- and for each column
	 -- write "X" or "-" plus a space
	 io.write (a[i] == j and "X" or "-", " ")
      end
      io.write ("\n")
   end
   io.write ("\n")
end

-- add to board 'a' all queens from 'n' to 'N'
function addqueen (a, n)
   if n > N then   -- all queens have been placed?
      printsolution (a)
      return true
   else   -- try to place n-th queen
      for c = 1, N do
	 if isplaceok (a, n, c) then
	    a[n] = c    -- place n-th queen at column 'c'
	    if (addqueen (a, n + 1)) then
	       return true
	    end
	 end
      end
   end
end

isplaceok_count = 0

-- run the program
addqueen ({}, 1)

print (isplaceok_count) --> 876
