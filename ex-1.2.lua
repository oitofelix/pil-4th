-- Exercise 1.2: Run the twice example, both by loading the file with
-- the -l option and with dofile.  Which way do you prefer?

-- We can load it with the following command:

-- lua -l lib1

-- and then functions norm and twice are available as soon as the
-- stand-alone interpreter prompt is reached.  So we can evaluate the
-- example at hand:

n = norm (3.4, 1.0)
twice (n)           --> 7.0880180586677

-- The other method is to invoke the stand-alone interpreter with no
-- arguments, like this:

-- lua

-- Then evaluate the code

dofile ("lib1.lua") -- load our library
n = norm (3.4, 1.0)
twice (n)           --> 7.0880180586677

-- I don’t have a preference either way.  I guess I’d use the most
-- appropriate for the circumstance at hand.
