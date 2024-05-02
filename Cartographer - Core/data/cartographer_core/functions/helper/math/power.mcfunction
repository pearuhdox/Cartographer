### Cloud Notes ###
# in is the number
# in1 is the power

scoreboard players operation out math = in math
scoreboard players operation #temp math = in1 math
function cartographer_core:helper/math/zprivate/power
scoreboard players operation in1 math = #temp math