-- Exercise 3.2: Explain the following results:
--
-- > math.maxinteger * 2                --> -2

math.maxinteger + math.mininteger       --> -1
math.maxinteger + (math.maxinteger + 1) --> -1
math.maxinteger * 2 + 1                 --> -1
math.maxinteger * 2                     --> -2

-- > math.mininteger * 2                --> 0

math.maxinteger * 2                     --> -2
(math.mininteger - 1) * 2               --> -2
math.mininteger * 2 - 2                 --> -2
math.mininteger * 2                     --> 0

-- > math.maxinteger * math.maxinteger  --> 1

math.maxinteger % math.mininteger                                         --> -1
(math.maxinteger % math.mininteger) * (math.maxinteger % math.mininteger) --> 1
math.maxinteger * math.maxinteger                                         --> 1

-- > math.mininteger * math.mininteger  --> 0

math.mininteger % math.mininteger                                         --> 0
(math.mininteger % math.mininteger) * (math.mininteger % math.mininteger) --> 0
math.mininteger * math.mininteger                                         --> 0
