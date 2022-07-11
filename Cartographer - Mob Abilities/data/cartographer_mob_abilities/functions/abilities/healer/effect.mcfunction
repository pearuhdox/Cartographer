attribute @s minecraft:generic.max_health modifier add 31-1258-1259-1248-1258 "0" 0 add
execute store result score $healer_amt ca.var run data get entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base

scoreboard players operation $healer_amt ca.var /= $3 ca.CONSTANT

scoreboard players operation @s cdl.heal_queue = $healer_amt ca.var
function cd:lib/mob/heal

particle minecraft:heart ~ ~1 ~ 0.5 0.5 0.5 0.05 15

function cartographer_mob_abilities:abilities/healer/call_parent_traits