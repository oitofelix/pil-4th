-- Exercise 3.1: Which of the following are valid numerals? What are
-- their values?
--
-- .0e12 .e12 0.0e 0x12 0xABFG 0xA FFFF 0xFFFFFFFF 0x 0x1P10 0.1e1
-- 0x0.1p1


.0e12      --> 0.0
.e12       --> unexpected symbol near '.'
.0.0e      --> malformed number near '0.0e'
0x12       --> 18
0xABFG     --> unexpected symbol near '0xABF'
0xA        --> 10
FFFF       --> nil
0xFFFFFFFF --> 4294967295
0x         --> malformed number near '0x'
0x1P10     --> 1024.0
0.1e1      --> 1.0
0x0.1p1    --> 0.125
