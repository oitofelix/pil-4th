-- Exercise 4.1: How can you embed the following fragment of XML as a
-- string in a Lua program?
--
-- <![CDATA[
-- Hello world
-- ]]>
--
-- Show at least two different ways.

-- Using a short literal string:

print "<![CDATA[\
Hello world\
]]>"

-- Using a long literal string:

print [=[
<![CDATA[
Hello world
]]>
]=]
