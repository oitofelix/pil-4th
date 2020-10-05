-- Exercise 4.4: Redo the previous exercise for UTF-8 strings:
--
-- > insert ("ação", 5, "!") --> ação!
--
-- (Note that the position now is counted in codepoints.)

function insert (to, i, from)
   return to:sub (1,
		  utf8.offset (to, i - 1))
      .. from
      .. to:sub (utf8.offset (to, i),
		 -1)
end

insert ("ação", 5, "!") --> ação!
