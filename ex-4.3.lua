-- Exercise 4.3: Write a function to insert a string into a given
-- position of another one:
--
-- > insert ("hello world", 1, "start: ") --> start: hello world
-- > insert ("hello world", 7, "small ")  --> hello small world

function insert (to, i, from)
   return to:sub (1, i - 1)
      .. from
      .. to:sub (i, -1)
end

insert ("hello world", 1, "start: ") --> start: hello world
insert ("hello world", 7, "small ")  --> hello small world
