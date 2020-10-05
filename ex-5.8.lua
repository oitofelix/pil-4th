-- Exercise 5.8: The table library offers a function table.concat,
-- which receives a list of strings and returns their concatenation:

print(table.concat({"hello", " ", "world"})) --> hello world

-- Write your own version for this function.

function concat (list, sep, i, j)
   sep = sep or ""
   i = i or 1
   j = j or #list
   s = ""
   for k = i, j do
      s = s .. sep .. list[k]
   end
   return s
end

-- Compare the performance of your implementation against the built-in
-- version for large lists, with hundreds of thousands of
-- entries. (You can use a for loop to create those large lists.)

t = {}
for i = 1, 100000 do
   t[i] = "\0"
end

clock = os.clock ()
table.concat (t)
print ("table.concat",
       os.clock () - clock)

clock = os.clock ()
concat (t)
print ("concat",
       os.clock () - clock)
