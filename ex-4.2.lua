-- Exercise 4.2: Suppose you need to write a long sequence of
-- arbitrary bytes as a literal string in Lua.  What format would you
-- use?  Consider issues like readability, maximum line length, and
-- size.

-- The Lua Manual says: "Lua opens files for parsing in text mode, and
-- the system file functions may have problems with some control
-- characters. So, it is safer to represent non-text data as a quoted
-- literal with explicit escape sequences for the non-text
-- characters."

-- Thus, I’d follow that advice.
