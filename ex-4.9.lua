-- Exercise 4.9: Redo the previous exercise for UTF-8 strings.

function utf8.reverse (s)
   local ns = ""
   for p, c in utf8.codes (s) do
      ns = utf8.char (c) .. ns
   end
   return ns
end

function ispali (s)
   local ns = s:gsub ("[%p%s]", "")
   return ns == utf8.reverse(ns)
end
