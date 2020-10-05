-- Exercise 1.4: Which of the following strings are valid identifiers?

-- ___    _end    End    end    until?    nil    NULL    one-step

-- To find this out it’s enough to try to make an attribution to each
-- of these identifier contenders.  The attribution for the ones that
-- are valid identifiers will succeed while the others for the ones
-- that are not will fail.

__ = nil   --> (success)
_end = nil --> (success)
End = nil  --> (success)
NULL = nil --> (success)

end = nil      --> <eof> expected near 'end' (‘end’ is a keyword)
until? = nil   --> <eof> expected near 'until' (‘until’ is a keyword
	       --    and ‘?’ is an invalid character for an identifier)
nil = nil      --> unexpected symbol near 'nil' (‘nil’ is a keyword)
one-step = nil --> syntax error near '-' (‘-’ is an invalid character
	       --    for an identifier)
