attribute @s minecraft:generic.max_health modifier add 31-1258-1259-1248-1258 "0" 0 add
execute store result score $healer_amt ca.var run data get entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base

scoreboard players operation $healer_amt ca.var /= $3 ca.CONSTANT

execute if score $healer_amt ca.var matches 21.. run scoreboard players set $healer_amt ca.var 20

scoreboard players operation @s bbl.heal_queue = $healer_amt ca.var
function bb:call/hpm/mob/heal

particle minecraft:heart ~ ~1 ~ 0.5 0.5 0.5 0.05 15

function cartographer_mob_abilities:abilities/healer/call_parent_traits

scoreboard players add $heal_count ca.mob_var 1