-- Exercise 4.5: Write a function to remove a slice from a string; the
-- slice should be given by its initial position and its length:
--
-- > remove ("hello world", 7, 4) --> hello d

function remove (s, i, n)
   return s:sub (1,
		 i - 1)
      .. s:sub (i + n,
		-1)
end

remove ("hello world", 7, 4) --> hello d
