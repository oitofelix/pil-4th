-- Exercise 1.5: What is the value of the expression ‘type (nil) ==
-- nil’?  (You can use Lua to check your answer.) Can you explain this
-- result?

-- type (nil) == nil --> false

-- That’s because the return type of the function ‘type’ is always a
-- string naming the type of its argument, which is certainly
-- different from ‘nil’, as this is of type nil and thus different
-- from any other value in the language.
