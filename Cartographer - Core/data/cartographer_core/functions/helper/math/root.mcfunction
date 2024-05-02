### Cloud Notes ###
# Newton-Raphson, 4 iterations approach
#
# Output has 2 decimal precision
#
# in = number to root

execute if score in math matches 214748.. run tellraw @a [{"text":"MATH Error:","color":"red"},{"text":" Fast Sqrt() Overflow. Input too large!","color":"white"}]
execute if score in math matches ..-1 run tellraw @a [{"text":"MATH Error:","color":"red"},{"text":" Fast Sqrt() Imaginary Number (input negative)","color":"white"}]

scoreboard players operation #temp1 math = in math
scoreboard players operation in math *= #10000 constant

### a
scoreboard players set out math 1255

function cartographer_core:helper/math/zprivate/newton_raphson
function cartographer_core:helper/math/zprivate/newton_raphson
function cartographer_core:helper/math/zprivate/newton_raphson
function cartographer_core:helper/math/zprivate/newton_raphson
execute if score #temp1 math matches 10000.. run function cartographer_core:helper/math/zprivate/newton_raphson
execute if score #temp1 math matches 100000.. run function cartographer_core:helper/math/zprivate/newton_raphson

execute if score out math matches ..0 run scoreboard players operation out math *= #-1 constant
scoreboard players operation in math = #temp1 math