-- Exercise 3.6: Write a function to compute the volume of a right
-- circular cone, given its height and the angle between a generatrix
-- and the axis.

function volume (height, angle)
   local radius = math.tan (angle)
      * height
   return 1/3
      * math.pi
      * radius^2
      * height
end
