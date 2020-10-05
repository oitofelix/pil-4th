-- Exercise 4.8: Redo the previous exercise so that it ignores
-- differences in spaces and punctuation.

function ispali (s)
   local ns = s:gsub ("[%p%s]", "")
   return ns == ns:reverse ()
end
