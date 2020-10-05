-- Exercise 5.1: What will the following script print? Explain.

sunday = "monday"; monday = "sunday"
t = {sunday = "monday", [sunday] = monday}
print(t.sunday, t[sunday], t[t.sunday])

--> "monday"    "sunday"   "sunday"

sunday   --> "monday"
monday   --> "sunday"

for k, v in pairs (t) do
   print (k, v)
end         --> "sunday" "monday"
            --> "monday" "sunday"

t.sunday    --> "monday"
t[sunday]   --> "sunday"
t[t.sunday] --> "sunday"
