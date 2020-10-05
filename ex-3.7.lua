-- Exercise 3.7: Using math.random, write a function to produce a
-- pseudo-random number with a standard normal (Gaussian)
-- distribution.

-- Using Box-Muller transform

function rand_snd ()
   return math.sqrt (-2
		     * math.log (math.random ()))
      * math.cos (2
		  * math.pi
		  * math.random ())
end
