-- Exercise 5.7: Write a function that inserts all elements of a given
-- list into a given position of another given list.

function insert (from, pos, to)
   for i, v in ipairs (from) do
      table.insert (to,
		    pos + i - 1,
		    v)
   end
end

to = {1, 2, 3, 4, 5}
from = {"a", "b", "c", "d", "e", 'f', 'g', 'h'}
insert (from, 3, to)
for i, v in ipairs (to) do
   print (i, v)
end

-- 1	1
-- 2	2
-- 3	a
-- 4	b
-- 5	c
-- 6	d
-- 7	e
-- 8	f
-- 9	g
-- 10	h
-- 11	3
-- 12	4
-- 13	5
