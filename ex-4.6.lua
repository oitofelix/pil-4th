-- Exercise 4.6: Redo the previous exercise for UTF-8 strings:
--
-- > remove ("ação", 2, 2) --> ao
--
-- (Here, both the initial position and the length should be counted
-- in codepoints.)

function remove (s, i, n)
   return s:sub (1,
		 utf8.offset (s,
			      i - 1))
      .. s:sub (utf8.offset (s,
			     i + n),
		-1)
end

remove ("ação", 2, 2) --> ao
