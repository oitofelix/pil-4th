-- Exercise 5.2: Assume the following code:
--
-- a = {}; a.a = a
--
-- What would be the value of a.a.a.a? Is any a in that sequence
-- somehow different from the others?

a = {}; a.a = a
a.a.a.a --> table: 0x557b80875340
a.a.a   --> table: 0x557b80875340
a.a     --> table: 0x557b80875340
a       --> table: 0x557b80875340

-- Nope.  They are all pointing to the table a refers to.

-- Now, add the next line to the previous code:
--
-- a.a.a.a = 3
--
-- What would be the value of a.a.a.a now?

a.a.a.a = 3
a.a.a.a     --> attempt to index a number value (field 'a')
a.a.a       --> attempt to index a number value (field 'a')
a.a         --> 3
a           --> table: 0x557b80875340

-- There is no value, because a.a is 3 and thus cannot be indexed
-- further.
