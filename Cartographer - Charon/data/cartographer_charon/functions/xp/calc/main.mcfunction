# Get the player's level
execute store result score $xp_total dt.var run xp query @s levels

# Convert this amount into the number of XP points
execute if score $xp_total dt.var matches 0..16 run function cartographer_charon:xp/calc/low
execute if score $xp_total dt.var matches 17..31 run function cartographer_charon:xp/calc/mid
execute if score $xp_total dt.var matches 32.. run function cartographer_charon:xp/calc/high

#Multiply this value by a percentage based on $xp_percent charon.gmr
scoreboard players operation $xp_result dt.var *= $xp_percent charon.gmr
scoreboard players operation $xp_result dt.var /= $100 ca.CONSTANT
